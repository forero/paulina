#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#define bool int
#define true 1
#define false 0

bool is_less_than_or_equal_1e6 (char *s) {
  const char * e6 = "1000000";
  if (strlen(s) > strlen(e6)) return false;
  if (strlen(s) < strlen(e6)) return true;
  return strcmp(s,e6) <=0;
}

int main (int argc, char* argv[]) {
  printf("%d\n",is_less_than_or_equal_1e6(argv[1]));
}
