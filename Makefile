# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rburgsta <rburgsta@student.42heilbronn.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/22 18:11:27 by rburgsta          #+#    #+#              #
#    Updated: 2022/10/28 02:01:21 by rburgsta         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
LIBFT = ./libft/
SOURCE = ft_printf.c \
		 ft_printf_char.c \
		 ft_printf_str.c \
		 ft_printf_ptr.c \
		 ft_printf_flags.c \
		 ft_putnbr.c
OBJECT = $(SOURCE:%.c=%.o)

all : $(NAME)

bonus : $(NAME)

$(NAME) : $(OBJECT) $(LIBFT)*.o
	ar -rcs $(NAME) $?

$(LIBFT)*.o :
	make -C $(LIBFT)

%.o : %.c
	cc -c -Wall -Wextra -Werror $^

clean :
	rm -f $(OBJECT)

fclean : clean
	rm -f $(NAME)

re : fclean all