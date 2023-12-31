/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_exit.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jcheel-n <jcheel-n@student.42barcelona.    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/20 03:31:25 by jcheel-n          #+#    #+#             */
/*   Updated: 2023/11/25 22:56:47 by jcheel-n         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../inc/minishell.h"

static void	ft_print_num_arg(char **cmd)
{
	ft_putstr_fd("minishell: ", 2);
	ft_putstr_fd("exit: ", 2);
	ft_putstr_fd(cmd[1], 2);
	ft_putstr_fd(": numeric argument required\n", 2);
	exit (255);
}

void	ft_normin(char **cmd)
{
	long long int	tmp_nbr;
	long long int	nbr;

	tmp_nbr = ft_atoll(cmd[1]);
	if (tmp_nbr == 0)
		exit (0);
	nbr = (uint8_t)tmp_nbr;
	ft_array_free(cmd, ft_array_size(cmd));
	exit(nbr);
}

int	ft_is_bigger_maxll(char *str)
{
	int	negative;

	negative = 0;
	if (str[0] == '-')
		negative = 1;
	if (ft_strcmp(str, "-9223372036854775808") == 0)
		return (0);
	else if (ft_strcmp(str, "9223372036854775807") == 0)
		return (0);
	else if (ft_strcmp(str, "-9223372036854775808") > 0 && negative == 1)
		return (1);
	else if (ft_strcmp(str, "9223372036854775807") > 0)
		return (1);
	return (0);
}

int	ft_exit(char **cmd, int multiple_cmd, t_minishell *data)
{
	if (!multiple_cmd)
		ft_putstr_fd("exit\n", 2);
	if (cmd[1] && ft_is_bigger_maxll(cmd[1]) == 1)
		ft_print_num_arg(cmd);
	if (ft_array_size(cmd) >= 2)
	{
		if (ft_isnumeric(cmd[1]) && ft_array_size(cmd) >= 3)
		{
			ft_putstr_fd("minishell: exit: too many arguments\n", 2);
			data->status = 1;
			return (1);
		}
		else if (!ft_isnumeric(cmd[1]))
			ft_print_num_arg(cmd);
		else if (ft_isnumeric(cmd[1]))
			ft_normin(cmd);
	}
	if (multiple_cmd)
	{
		data->status = 0;
		return (1);
	}
	exit(data->status);
}
