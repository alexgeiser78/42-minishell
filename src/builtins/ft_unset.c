/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_unset.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jcheel-n <jcheel-n@student.42barcelona.    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/20 03:18:03 by jcheel-n          #+#    #+#             */
/*   Updated: 2023/10/20 21:14:35 by jcheel-n         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../inc/minishell.h"

static void	ft_unset_error_invalid_option(char *arg)
{
	ft_putstr_fd("minishell: unset: ", 2);
	ft_putstr_fd(arg, 2);
	ft_putstr_fd(": invalid option\n", 2);
	ft_putstr_fd("unset: usage: unset [-f] [-v] [name ...]\n", 2);
	g_status.status = 2;
}

static void	ft_unset_error_invalid_id(char *arg)
{
	ft_putstr_fd("minishell: unset: `", 2);
	ft_putstr_fd(arg, 2);
	ft_putstr_fd("': not a valid identifier\n", 2);
	g_status.status = 1;
}

static void	ft_unset_logic(t_env **prev, t_env *node, t_env *node_next)
{
	*prev = node_next;
	free(node->id);
	free(node->value);
	free(node);
}

void	ft_unset_node(t_env **lstenv, char *id)
{
	t_env	*prev;
	t_env	*node;

	prev = *lstenv;
	node = ft_find_id(*lstenv, id);
	if (!node)
		return ;
	while (prev)
	{
		if (prev == node)
		{
			ft_unset_logic(lstenv, prev, node->next);
			break ;
		}
		else if (prev->next == node)
		{
			ft_unset_logic(&prev->next, node, node->next);
			break ;
		}
		prev = prev->next;
	}
}

int	ft_unset(t_minishell *data, char **cmd)
{
	int	i;

	i = ft_cmdsize(cmd);
	g_status.status = 0;
	if (i >= 2)
	{
		ft_unset_error_invalid_option(cmd[1]);
		return (1);
	}
	while (cmd[i])
	{
		if (ft_check_var_rules(cmd[i]))
		{
			ft_unset_node(&data->lstenv, cmd[i]);
		}
		else
		{
			ft_unset_error_invalid_id(cmd[i]);
		}
		i++;
	}
	if (g_status.status != 1)
		g_status.status = 0;
	return (1);
}
