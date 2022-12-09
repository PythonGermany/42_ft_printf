/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rburgsta <rburgsta@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/20 15:49:56 by rburgsta          #+#    #+#             */
/*   Updated: 2022/11/15 17:43:25 by rburgsta         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"
#include <stdio.h>

int main()
{
	int i = 0;
	void *ptr = &i;
	char *str = 0;
	//ft_printf("%i\n", ft_printf("'% s '", "test"));
	//printf("%i\n", printf("'% s '", "test"));
	ft_printf("%i\n", ft_printf("'%%c %c'\n'%%s %s'\n'%%p %p'\n'%%d % d'\n'%%i %+i'\n'%%u %u'\n'%%x %#x'\n'%%X %#X'\n", 'x', str, ptr, 42, 42, (unsigned int)4294967290, 23141, -23141));
	printf("%i\n", printf("'%%c %c'\n'%%s %s'\n'%%p %p'\n'%%d % d'\n'%%i %+i'\n'%%u %u'\n'%%x %#x'\n'%%X %#X'\n", 'x', str, ptr, 42, 42, (unsigned int)4294967290, 23141, -23141));
}