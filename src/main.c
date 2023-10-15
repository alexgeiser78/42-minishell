#include "../inc/minishell.h"

int	ft_isstralnum(char *str)
{
	int i;

	i = 0;
	while (str[i])
	{
		if (ft_isalnum(str[i]))
			return 1;
		i++;
	}
	return (0);
}

int	main(int ac, char **av, char **env)
{
	t_minishell	data;
	//char 		*line;
	// struct termios old_settings;
	// struct termios new_settings;

	if (ac != 1 && !av)
		return (1);
	init_env(&data, env);
	//get terminal settings
	// if (tcgetattr(STDIN_FILENO, &new_settings) != 0) 
	// {
	// 	perror("tcgetattr");
	// 	return (1);
	// }
 	// old_settings = new_settings;
	// new_settings.c_lflag &= ~ECHOCTL;
	// if (tcsetattr(STDIN_FILENO, TCSANOW, &new_settings) != 0) {
    //     perror("tcsetattr");
    //     return 1;
    // }
	
	//for ctrl + c
	/*	if (signal(SIGINT, signal_handler) == SIG_ERR)
			{
			perror("signal");
			return(1);
			}
	*/
	while (1)
	{
		signal(SIGINT, signal_handler);
		signal(SIGQUIT, SIG_IGN);
		data.raw_cmd = display_prompt_msg();
		if (!data.raw_cmd)
			break; //ctrl + d
		data.status = 0;
		if (!data.raw_cmd)
		{
			if (isatty(STDIN_FILENO))
			write(2, "exit\n", 6);
			exit (EXIT_SUCCESS);
		}
		//is_redirect(data.raw_cmd);
		if (ft_strlen(data.raw_cmd) > 0 && ft_isstralnum(data.raw_cmd))
			ft_commands(&data);
		
		
	
	}
	//restore originial terminal settings
	// if (tcsetattr(STDIN_FILENO, TCSANOW, &old_settings) != 0) {
    //     perror("tcsetattr");
    //     return 1;
    // }

	//ft_freemini(env);
	return (0);
}

