# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gorban <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/19 10:17:38 by gorban            #+#    #+#              #
#    Updated: 2021/03/19 10:17:46 by gorban           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	libasm.a

SRCS	=	ft_strlen.s \
			ft_strcpy.s \
			ft_strcmp.s \
			ft_write.s \
			ft_read.s \
			ft_strdup.s \

OBJS	=	$(SRCS:.s=.o)

NASM	=	nasm -f macho64

CC		=	gcc
CFLAGS	=	-Wall -Wextra -Werror

%.o : %.s
	$(NASM) -o $@ $<

all : $(NAME)

$(NAME) : $(OBJS) libasm.h
	ar -rc $(NAME) $(OBJS)

clean :
	rm -f $(OBJS)

fclean : clean
	rm -f $(NAME)

re : fclean all
