#Exit
NAME		= 	libft.a

#Sources
SRCS		= 	ft_atoi.c \
				ft_bzero.c \
				ft_calloc.c \
				ft_isalnum.c \
				ft_isalpha.c \
				ft_isascii.c \
				ft_isdigit.c \
				ft_isprint.c \
				ft_memchr.c \
				ft_memcmp.c \
				ft_memcpy.c \
				ft_memmove.c \
				ft_memset.c \
				ft_strchr.c \
				ft_strdup.c \
				ft_strjoin.c \
				ft_strlcat.c \
				ft_strlcpy.c \
				ft_strlen.c \
				ft_strncmp.c \
				ft_strnstr.c \
				ft_strrchr.c \
				ft_strtrim.c \
				ft_substr.c \
				ft_tolower.c \
				ft_toupper.c \
				ft_split.c \
				ft_itoa.c \
				ft_striteri.c \
				ft_strmapi.c \
				ft_putchar_fd.c \
				ft_putstr_fd.c \
				ft_putendl_fd.c \
				ft_putnbr_fd.c \
				ft_lstnew.c \
				get_next_line.c \
 				get_next_line_utils.c \
				ft_printf.c \
				ft_printstr.c \
				ft_printnum.c \
				ft_lstnew.c \
				ft_lstadd_front.c \
				ft_lstsize.c \
				ft_lstlast.c \
				ft_lstadd_back.c \
				ft_lstdelone.c \
				ft_lstclear.c \
				ft_lstiter.c \
				ft_lstmap.c

#BONUS_SRCS	=	ft_lstnew.c \
				ft_lstadd_front.c \
				ft_lstsize.c \
				ft_lstlast.c \
				ft_lstadd_back.c \
				ft_lstdelone.c \
				ft_lstclear.c \
				ft_lstiter.c \
				ft_lstmap.c \

OBJS		= 	$(SRCS:.c=.o)
//BONUS_OBJS	=	$(BONUS_SRCS:.c=.o)


#Compilation
AR			=	ar -rcs
CC			=	gcc
CFLAGS		=	-Wall -Wextra -Werror

#Erase
RM			= 	rm -rf

#Default target
all:		$(NAME)

# Linking: option -r to ensure that if the library (.a) file already exists, 
# it will be replaced. The command option -c should be used so that if the 
# file doesn’t exist, it will be created.
$(NAME):	$(OBJS) 
			$(AR) $(NAME) $(OBJS)

#bonus: 		$(OBJS) $(BONUS_OBJS)
#			ar -rcs $(NAME) $(OBJS) $(BONUS_OBJS)
			
#Cleaning objects (Eliminacion de objetos)
clean:
			$(RM) $(OBJS)

#Cleaning objects and executable 
fclean:		clean
			$(RM) $(NAME)

#Cleaning all and then compilation
re:			fclean all

#Exectute no matter name is
.PHONY: all clean fclean re


# Makefile Pipex:
# NAME		= 	libft.a

# SRCS		= 	ft_strlen.c \
# 				ft_strjoin.c \
# 				ft_strncmp.c \
# 				ft_putchar_fd.c \
# 				ft_putstr_fd.c \
# 				ft_split.c \
# 				ft_free.c \
# 				ft_word_count.c \
# 				get_next_line.c \
# 				get_next_line_utils.c


# OBJS		= 	$(SRCS:.c=.o)

# AR			=	ar -rcs
# CC			=	gcc
# CFLAGS		=	-Wall -Wextra -Werror

# RM			= 	rm -rf

# all:		$(NAME)

# $(NAME):	$(OBJS) 
# 			$(AR) $(NAME) $(OBJS)

# clean:
# 			$(RM) $(OBJS)

# fclean:		clean
# 			$(RM) $(NAME)

# re:			fclean all

# .PHONY: all clean fclean re