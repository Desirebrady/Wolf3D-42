/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnew.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dshumba <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/05/29 16:08:14 by dshumba           #+#    #+#             */
/*   Updated: 2018/05/29 16:24:06 by dshumba          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char		*ft_strnew(size_t size)
{
	char	*s;
	size_t	i;

	s = malloc(sizeof(char) * size + 1);
	i = 0;
	if (!s)
		return (0);
	while (s[i])
	{
		s[i] = '\0';
		i++;
	}
	return (s);
}
