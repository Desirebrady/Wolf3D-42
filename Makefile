# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dshumba <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/08/16 10:35:03 by dshumba           #+#    #+#              #
#    Updated: 2018/08/16 10:35:07 by dshumba          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = wolf3d

SRC_PATH = srcs
SRC_NAME = main.c reader.c ray_casting.c hook.c draw.c textures.c

OBJ_PATH = objs
OBJ_NAME = $(SRC_NAME:.c=.o)

CC = clang
CFLAGS = -Wall -Werror -Wextra

CPPFLAGS = -I includes -I libft/includes

LDFLAGS = -L libft
LDLIBS = -lft -lm -lmlx -framework OpenGL -framework AppKit

SRC = $(addprefix $(SRC_PATH)/,$(SRC_NAME))
OBJ = $(addprefix $(OBJ_PATH)/,$(OBJ_NAME))

all: libft $(NAME)

$(NAME): $(OBJ) libft/libft.a
	@$(CC) $(LDFLAGS) $(LDLIBS) $^ -o $@
	@echo "Compilation of Wolf3d:	\033[1;32mOK\033[m"

$(OBJ_PATH)/%.o: $(SRC_PATH)/%.c
	@mkdir $(OBJ_PATH) 2> /dev/null || true
	@$(CC) $(CFLAGS) -c $< $(CPPFLAGS) -o $@

libft:
	@make -C libft

clean:
	@make -C libft clean
	@rm -f $(OBJ)
	@rmdir $(OBJ_PATH) 2> /dev/null || true
	@echo "Wolf3d:	Removing Objs"

fclean:
	@make -C libft fclean
	@rm -f $(OBJ)
	@rmdir $(OBJ_PATH) 2> /dev/null || true
	@echo "Wolf3d:	Removing Objs"
	@rm -f $(NAME)
	@echo "Wolf3d:	Removing Wolf3d"

re: fclean all

.PHONY: all clean fclean re libft
