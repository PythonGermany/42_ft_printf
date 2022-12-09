/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rburgsta <rburgsta@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/20 16:30:39 by rburgsta          #+#    #+#             */
/*   Updated: 2022/11/15 15:16:30 by rburgsta         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

int		ft_printf(const char *format, ...);
int		ft_printf_char(char c);
int		ft_printf_str(char *str);
int		ft_printf_ptr(void *ptr);
int		ft_printf_flags(char *format, char **flags);
void	ft_putnbrl(long int n, char *base, int *ln);
void	ft_putnbrul(unsigned long int n, char *base, int *ln);
void	ft_putnbru(unsigned int n, char *base, int *ln);

#endif