#include <stdio.h>
#include <stdlib.h>
//#include <string.h>
//#include <math.h>

int read_lines (char *arg) {
  freopen(arg, "r",stdin);
  int n = 0;
  size_t size;
  char *s = (char *) malloc (10000);
  while(getline(&s, &size, stdin) != -1) {
    n++;
  }
  return n;
}

int main (int argc, char* argv[]) {
  int n = read_lines(argv[1]);
  printf("%d lineas leidas\n",n);
  float * x = (float *) malloc (n * sizeof(float));
  float * y = (float *) malloc (n * sizeof(float));
  float * z = (float *) malloc (n * sizeof(float));
  freopen(argv[1],"r",stdin);
  int i;
  printf("%d\n",n);
  for (i = 0;i < n; i++) {
    scanf("%f %f %f",&x[i], &y[i], &z[i]);
    printf("%f %f %f\n",x[i],y[i],z[i]);
  }
}
