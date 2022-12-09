/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf_ptr.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rburgsta <rburgsta@student.42heilbronn.    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/22 16:13:20 by rburgsta          #+#    #+#             */
/*   Updated: 2022/10/27 12:32:35 by rburgsta         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft/libft.h"
#include "libftprintf.h"

int	ft_printf_ptr(void *ptr)
{
	int	len;

	len = 0;
	ft_putstr_fd("0x", 1);
	len += 2;
	ft_putnbrul((unsigned long int)ptr, "0123456789abcdef", &len);
	return (len);
}
