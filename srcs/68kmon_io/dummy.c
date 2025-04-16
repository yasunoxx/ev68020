// dummy.c

static char buf[80];

void *dummy()
{
    return (void *)&buf;   // return local pointer
}
