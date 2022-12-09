# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rburgsta <rburgsta@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/22 18:11:27 by rburgsta          #+#    #+#              #
#    Updated: 2022/10/29 00:01:18 by rburgsta         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
LIBFT_PATH = ./libft/
SOURCE = ft_printf.c \
		 ft_printf_char.c \
		 ft_printf_str.c \
		 ft_printf_ptr.c \
		 ft_printf_flags.c \
		 ft_putnbr.c
OBJECT = $(SOURCE:%.c=%.o)

all : $(NAME)

bonus : $(NAME)

$(NAME) : $(OBJECT) $(LIBFT_PATH)*.o
	ar -rcs $(NAME) $?

$(LIBFT_PATH)*.o :
	make -C $(LIBFT_PATH)

%.o : %.c
	cc -c -Wall -Wextra -Werror $^

clean :
	rm -f $(OBJECT)

fclean : clean
	rm -f $(NAME)

re : fclean all