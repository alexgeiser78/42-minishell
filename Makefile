#●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●#
#	 __  __    __    _  _  ____  ____  ____  __    ____ 		    	 	 #
#	(  \/  )  /__\  ( )/ )( ___)( ___)(_  _)(  )  ( ___)		   		     #
#	 )    (  /(__)\  )  (  )__)  )__)  _)(_  )(__  )__) 		     		 #
#	(_/\/\_)(__)(__)(_)\_)(____)(__)  (____)(____)(____) 𝕓𝕪 𝕁𝕠𝕤𝕖𝕡𝕙 ℂ𝕙𝕖𝕖𝕝       #									
#●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●#

#●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●#
#•❅──────✧❅✦❅✧──────❅••❅──────✧❅✦❅✧──NAME──✧❅✦❅✧──────❅••❅──────✧❅✦❅✧──────❅•#
#●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●#

NAME		=	minishell

#●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●#
#•❅──────✧❅✦❅✧──────❅••❅──────✧❅✦❅✧──CMD───✧❅✦❅✧──────❅••❅──────✧❅✦❅✧──────❅•#
#●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●#

CC			=	gcc
RLFLAGS		= 	-lreadline 
CFLAGS		=	-Wall -Werror -Wextra
#XFLAGS		=	-fsanitize=address -g2 -g
CLEAN_CAR	=	\033[2K\r

AR			=	ar rcs
RM			=	rm -f
MD			=	mkdir -p
CP			=	cp -f


#●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●#
#•❅──────✧❅✦❅✧──────❅••❅──────✧❅✦❅DIRECTORIES✦❅✧──────❅••❅──────✧❅✦❅✧──────❅•#
#●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●#

SRC_DIR			=	src/
BUILTINS_DIR		=	builtins/
ENV_DIR			=	environment/
VAR_DIR			= 	variables/
EXEC_DIR		=	executor/
CMDS_DIR		= 	command/
TERM_DIR		= 	terminal/
PAR_DIR			= 	parsers/
REDIR_DIR		= 	redirections/
SYNTAX_DIR		= 	syntax/

OBJ_DIR			=	build/

INC_DIR			=	inc/
LIBFT_INC		= 	libft/inc/

LIBFT_DIR		= 	libft/
LIBFT			=	libft/libft.a

INCLUDE			+= -I $(INC_DIR) -I $(LIBFT_INC)

#●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●#
#•❅──────✧❅✦❅✧──────❅••❅──────✧❅✦❅✧READLINE✧❅✦❅✧──────❅••❅──────✧❅✦❅✧──────❅•#
#●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●#

# Flags for Campus Joseph
LDFLAGS = /Users/${USER}/.brew/opt/readline/lib
RFLAGS = /Users/${USER}/.brew/opt/readline/include

# Flags for Campus Alex
#    LDFLAGS = /System/Volumes/Data/sgoinfre/Perso/ageiser/homebrew/opt/readline/lib
#    RFLAGS = /System/Volumes/Data/sgoinfre/Perso/ageiser/homebrew/opt/readline/include

# # Flags for Home Joseph
 #LDFLAGS	=/opt/homebrew/opt/readline/lib
 #RFLAGS	= /opt/homebrew/opt/readline/include

# Flags for Home alex
# LDFLAGS=/usr/local/opt/readline/lib
# RFLAGS=/usr/local/opt/readline/include

#●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●#
#•❅──────✧❅✦❅✧──────❅••❅──────✧❅✦❅✧─SORCES─✧❅✦❅✧──────❅••❅──────✧❅✦❅✧──────❅•#
#●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●#

MS_SRCS			=	main.c display_prompt.c ft_signal_handler.c
BUILTINS	 	=	is_builtin.c ft_echo.c ft_pwd.c ft_cd.c  ft_cd_utils.c ft_env.c ft_export.c ft_unset.c ft_exit.c
ENV				=	init_env.c ft_split_env.c env_lstcreate.c env_lstutils.c env_lstprint.c ft_env_to_array.c free_env.c
EXEC			=	exec_one.c exec_multiple.c
CMDS 			=	commands.c command_utils.c one_command.c multiple_commands.c init_cmd_data.c command_utils2.c separate_cmds.c
VARIABLES		=	ft_isvar.c ft_addvar.c ft_setvar.c ft_parsevar.c ft_replacevar.c ft_get_variable.c ft_check_var_rules.c
TERM			=	term_setting.c term_fd.c
PARSERS			= 	ft_split_quotes.c ft_split_quotes_two.c ft_split_pipe.c ft_get_quotes_values.c
REDIR			= 	redirect.c ft_clean_redir_cmd.c ft_get_next_filename.c files_in.c  ft_get_redir_values.c files_out.c ft_heredoc.c ft_get_values.c
SYNTAX			=	syntax_error.c ft_check_pipe_syntax.c ft_check_redir_syntax.c ft_has_valid_quotes.c

SRCS			+=	$(addprefix $(SRC_DIR), $(MS_SRCS))
SRCS			+= 	$(addprefix $(SRC_DIR), $(addprefix $(BUILTINS_DIR), $(BUILTINS)))
SRCS			+= 	$(addprefix $(SRC_DIR), $(addprefix $(ENV_DIR), $(ENV)))
SRCS			+= 	$(addprefix $(SRC_DIR), $(addprefix $(EXEC_DIR), $(EXEC)))
SRCS			+= 	$(addprefix $(SRC_DIR), $(addprefix $(CMDS_DIR), $(CMDS)))
SRCS			+= 	$(addprefix $(SRC_DIR), $(addprefix $(VAR_DIR), $(VARIABLES)))
SRCS			+= 	$(addprefix $(SRC_DIR), $(addprefix $(TERM_DIR), $(TERM)))
SRCS			+= 	$(addprefix $(SRC_DIR), $(addprefix $(PAR_DIR), $(PARSERS)))
SRCS			+= 	$(addprefix $(SRC_DIR), $(addprefix $(REDIR_DIR), $(REDIR)))
SRCS			+= 	$(addprefix $(SRC_DIR), $(addprefix $(SYNTAX_DIR), $(SYNTAX)))

OBJS			=	$(addprefix $(OBJ_DIR), $(SRCS:.c=.o))
DEPS			+=	$(addsuffix .d, $(basename $(OBJS)))

#●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●#
#•❅──────✧❅✦❅✧──────❅••❅───OBJECT DEPENDENCY TARGET───❅••❅──────✧❅✦❅✧──────❅•#
#●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●#

$(OBJ_DIR)%.o : %.c Makefile 
	@$(MD) $(dir $@)
	@make -sC $(LIBFT_DIR)
	@printf "$(CLEAN_CAR)$(OK_COLOR)[minishell Compiling]$(BLUE_COLOR) : $(WARN_COLOR)$<$(NO_COLOR)"
	
	@$(CC) -MT $@ -MMD -MP -c $(CFLAGS) -I$(RFLAGS) $(INCLUDE) $< -o $@ 

#●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●#
#•❅──────✧❅✦❅✧──────❅••❅──────✧❅✦❅✧─TARGET─✧❅✦❅✧──────❅••❅──────✧❅✦❅✧──────❅•#
#●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●#

all:		libft_link $(NAME) 

$(NAME):	$(LIBFT) $(OBJS) 
			@$(CC) $(CFLAGS) $(RLFLAGS) -L$(LDFLAGS) $(XFLAGS) $(LIBFT) $(OBJS) -o $(NAME)
			@sleep 0.2
			@echo "$(CLEAN_CAR)$(OK_COLOR)Minishell Compiled!$(NO_COLOR)"
			@echo "Use $(BLUE_COLOR)./minishell$(NO_COLOR) to launch the program"

clean:
			@make clean -sC $(LIBFT_DIR)
			@$(RM) -r $(OBJ_DIR)
			@echo "$(ERROR_COLOR)Dependencies and objects removed$(NO_COLOR)"

fclean:		
			@make fclean -sC $(LIBFT_DIR)
			@$(RM) -r $(OBJ_DIR)
			@$(RM) $(NAME)
			@echo "$(ERROR_COLOR)$(NAME) removed$(NO_COLOR)"

re:			fclean all

run:		all
			@echo ""
			@echo "$(OK_COLOR)Launching Minishell...$(NO_COLOR)"
			@echo ""
			@./minishell

leak:		all
			@echo ""
			@echo "$(OK_COLOR)Launching Minishell...$(NO_COLOR)"
			@echo ""
			@leaks -atExit -- ./minishell

libft_link:	
			@make -sC $(LIBFT_DIR)

-include $(DEPS)

#●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○IGNORE○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●#

.PHONY: all clean fclean re run leak libft_link

#●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●#
#•❅──────✧❅✦❅✧──────❅••❅──────✧❅✦❅✧─COLOR──✧❅✦❅✧──────❅••❅──────✧❅✦❅✧──────❅•#
#●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●●○●○●○●○●○●○●○●○●○●#

NO_COLOR		=	\x1b[0m
OK_COLOR		=	\x1b[32;01m
ERROR_COLOR		=	\x1b[31;01m
WARN_COLOR		=	\x1b[33;01m
BLUE_COLOR		=	\x1b[34;01m

OK_STRING		=	$(OK_COLOR)[OK]$(NO_COLOR)
ERROR_STRING	=	$(ERROR_COLOR)[ERRORS]$(NO_COLOR)
WARN_STRING		=	$(WARN_COLOR)[WARNINGS]$(NO_COLOR)
