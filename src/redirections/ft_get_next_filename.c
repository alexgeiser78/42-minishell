#include "../../inc/minishell.h"

char *ft_get_next_filename(char *raw_cmd)
{
	char **split;
	char *filename;

	while (*raw_cmd == '<' || *raw_cmd == '>')
		raw_cmd++;
	// while (ft_isspace(raw_cmd[i]))
	// 	i++;
	// printf("%s\n", raw_cmd);
//  return NULL;

	split = ft_split_quotes(raw_cmd);
	if (!split)
		return (NULL);
	filename = ft_strdup(split[0]);
	ft_array_free(split, ft_array_size(split));
	return (filename);
}
