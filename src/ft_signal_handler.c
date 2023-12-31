/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_signal_handler.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ageiser <ageiser@student.42barcelona.com>  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/16 19:29:06 by ageiser           #+#    #+#             */
/*   Updated: 2023/11/16 19:29:10 by ageiser          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../inc/minishell.h"

void	catch_signal(t_minishell *data, int status, int set_status)
{
	if (status == 130)
		ft_putstr_fd("\n", STDOUT_FILENO);
	if (status == 131)
		ft_putstr_fd("Quit: 3\n", STDOUT_FILENO);
	if (set_status)
		data->status = status;
}

void	signal_handler(int sig)
{
	if (sig == SIGINT)
	{
		rl_replace_line("", 0);
		ft_putstr_fd("\n", STDOUT_FILENO);
		rl_on_new_line();
		rl_redisplay();
	}
	else if (sig == SIGQUIT)
	{
		rl_replace_line("", 0);
		ft_putstr_fd("Quit: 3\n", STDOUT_FILENO);
		rl_on_new_line();
		rl_redisplay();
	}
}

void	signal_handler_heredoc(int sig)
{
	if (sig == SIGINT)
	{
		exit(0);
	}
	else if (sig == SIGQUIT)
	{
		rl_replace_line("", 0);
		rl_redisplay();
	}
}
