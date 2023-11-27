/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_addvar.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jcheel-n <jcheel-n@student.42barcelona.    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/20 11:14:17 by jcheel-n          #+#    #+#             */
/*   Updated: 2023/11/25 23:17:36 by jcheel-n         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../inc/minishell.h"

//Adds variable to list
void	ft_add_variable(t_env *head, char *id, char *value)
{
	t_env	*new_node;

	new_node = ft_create_new_node(id, value);
	ft_insert_at_end(head, new_node);
}
