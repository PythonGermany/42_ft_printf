# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rburgsta <rburgsta@student.42heilbronn.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/22 18:11:27 by rburgsta          #+#    #+#              #
#    Updated: 2022/10/28 02:02:29 by rburgsta         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
LIBFT = ./libft/libft.a
SOURCE = ft_printf.c \
		 ft_printf_char.c \
		 ft_printf_str.c \
		 ft_printf_ptr.c \
		 ft_printf_flags.c \
		 ft_putnbr.c
OBJECT = $(SOURCE:%.c=%.o)

all : $(NAME)

bonus : $(NAME)

$(NAME) : $(OBJECT) $(LIBFT)
	ar -rcs $(NAME) $?

$(LIBFT) :
	make -C $(LIBFT)

%.o : %.c
	cc -c -Wall -Wextra -Werror $^

clean :
	rm -f $(OBJECT)

fclean : clean
	rm -f $(NAME)

re : fclean all