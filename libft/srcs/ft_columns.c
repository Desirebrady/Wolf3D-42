/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_columns.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dshumba <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/08/17 09:55:32 by dshumba           #+#    #+#             */
/*   Updated: 2018/08/17 09:55:35 by dshumba          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

size_t	ft_columns(const char *s)
{
	size_t	count;

	count = 0;
	while (s[count] && s[count] != '\n')
		count++;
	return (count);
}
