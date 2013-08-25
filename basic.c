#include <stdio.h>
#include <stdlib.h>

#define REACH printf("reached line %d\n",__LINE__)

int count_lines (char * arg) {
  FILE *in = fopen(arg,"r");
  int x;
  fscanf(in,"%d", &x);
  fclose(in);
  return x;
}

int main (int argc, char* argv []) {
  int x = count_lines(argv[1]);
  printf("%d\n",x);
  return 0;
}
