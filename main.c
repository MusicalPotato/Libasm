
#include "libasm.h"

void	test_strlen()
{
	printf("\nTest strlen\n");
	printf("STRLEN NORMAL : %lu\n", strlen("strlentest12\n"));
	printf("STRLEN LIBASM : %lu\n", ft_strlen("strlentest12\n"));
	return ;
}

void	test_strcpy()
{
	char	*str;

	printf("\nTest strcpy\n");
	str = malloc(sizeof(char) * 0);
	printf("STRCPY NORMAL : %s\n", strcpy(str, "copy"));
	printf("STRCPY LIBASM : %s\n", ft_strcpy(str, "copy"));
	free(str);
	return ;
}

void	test_strcmp()
{
	printf("\nTest strcmp\n");
	printf("STRCMP NORMAL : %d\n", strcmp("test", "test"));
	printf("STRCMP LIBASM : %d\n", ft_strcmp("test", "test"));
	return ;
}

void	test_write()
{
	printf("\nTest write\n");
	printf("WRITE NORMAL : %zd\n", write(1, "writetest12\n", 12));
	printf("WRITE LIBASM : %zd\n", ft_write(1, "writetest12\n", 12));
	return ;
}

void	test_read()
{
	char	test[2];
	int		fd;

	printf("\nTest read\n");
	fd = open("main.c", O_RDONLY);
	printf("READ NORMAL : %zd\n", read(fd, test, 2));
	printf("%s\n", test);
	close(fd);
	fd = open("main.c", O_RDONLY);
	printf("READ LIBASM : %zd\n", ft_read(fd, test, 2));
	printf("%s\n", test);
	close(fd);
	return ;
}

void	test_strdup()
{
	printf("\nTest strdup\n");
	printf("STRDUP NORMAL : %s\n", strdup("poi^p"));
	printf("STRDUP LIBASM : %s\n", ft_strdup("poi^p"));
	return ;
}

int	main()
{
	printf("Start test\n");
	test_strlen();
	test_strcpy();
	test_strcmp();
	test_write();
	test_read();
	test_strdup();
	printf("\nEnd test\n");
	return (0);
}
