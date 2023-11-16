/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_addvar.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jcheel-n <jcheel-n@student.42barcelona.    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/20 11:14:17 by jcheel-n          #+#    #+#             */
/*   Updated: 2023/10/20 11:15:13 by jcheel-n         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../inc/minishell.h"

//Adds variable to list
void	ft_add_variable(t_env **head, char *id, char *value)
{
	char **split;
	char *value_splitted;
	t_env	*temp;
	t_env	*new_node;

	split = ft_split_quotes(value);
	if (split[0])
		value_splitted = ft_strdup(split[0]);
	else
		value_splitted = value;
	ft_array_free(split, ft_array_size(split));
	new_node = ft_create_new_node(id, value_splitted);
	if (!new_node)
		return ;
	temp = *head;
	if (!temp)
		*head = new_node;
	while (temp->next)
		temp = temp->next;
	temp->next = new_node;
}
