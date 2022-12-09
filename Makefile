# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rburgsta <rburgsta@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/22 18:11:27 by rburgsta          #+#    #+#              #
#    Updated: 2022/11/15 16:19:42 by rburgsta         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
SOURCE = ft_printf.c \
		 ft_printf_char.c \
		 ft_printf_str.c \
		 ft_printf_ptr.c \
		 ft_printf_flags.c \
		 ft_putnbr.c
LIBFT_SOURCE = ./libft/ft_putstr_fd.c ./libft/ft_putchar_fd.c ./libft/ft_strchr.c ./libft/ft_strlen.c ./libft/ft_substr.c ./libft/ft_calloc.c
OBJECT = $(SOURCE:%.c=%.o)
LIBFT_OBJECT = $(LIBFT_SOURCE:%.c=%.o)

all : $(NAME)

bonus : $(NAME)

$(NAME) : $(OBJECT)
	make -C libft
	ar -rcs $(NAME) $? $(LIBFT_OBJECT)

%.o : %.c
	cc -c -Wall -Wextra -Werror $^

clean :
	make -C libft clean
	rm -f $(OBJECT)

fclean : clean
	make -C libft fclean
	rm -f $(NAME)

re : fclean all