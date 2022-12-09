/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf_flags.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rburgsta <rburgsta@student.42heilbronn.    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/22 18:40:42 by rburgsta          #+#    #+#             */
/*   Updated: 2022/10/22 18:40:42 by rburgsta         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libftprintf.h"
#include "libft/libft.h"

int	ft_printf_flags(char *format, char **flags)
{
	int		i;

	i = 0;
	while (ft_strchr("-0.# +", format[i]) && format[i])
		i++;
	*flags = ft_substr((char const *)format, 0, i);
	return (i);
}
