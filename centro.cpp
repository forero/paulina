#include <iostream>
#include <cstdio>
#include <vector>
#include <cmath>
#include <iomanip>

using namespace std;

typedef float ld;
typedef vector<ld>  vd;

ld phi (vd x, vd y, vd z, int i) {
  ld ret = 0;
  ld aux;
  for (int j = 0; j < x.size(); ++j) {
    if (i == j) continue;
    aux = (x[i]-x[j])*(x[i]-x[j])+(y[i]-y[j])*(y[i]-y[j])+(z[i]-z[j])*(z[i]-z[j]);
    aux = sqrt(aux);
    ret += 1.0/aux;
  }
  return -ret;
}

float calculate_phi(vd X, vd Y, vd Z,  int i ){

  float phi=0.0;
  int size = X.size();
  int j;
  for(j=0; j<size; ++j){
    if (i != j){

      float a = (X[i]-X[j])*(X[i]-X[j]);
      float b = (Y[i]-Y[j])*(Y[i]-Y[j]);
      float c = (Z[i]-Z[j])*(Z[i]-Z[j]);
      float d = a*a;
      float e = b*b;
      float f = c*c;
      float g = d+e+f;
      float h = sqrt(a+b+c);
      float w = (1.0/g);

      phi=(phi+w);
    }
  } 

  return -phi;
}


int main (int argc, char* argv []) {
  ios::sync_with_stdio(false);
  vd x,y,z;
  ld a,b,c;
  freopen(argv[1],"r",stdin);
  x.reserve(20000);
  y.reserve(20000);
  z.reserve(20000);
  while(cin>>a>>b>>c) {
    x.push_back(a);
    y.push_back(b);
    z.push_back(c);
  }
  int i_min = 0;
  ld phi_min = phi(x,y,z,0);
  for (int i = 0; i < x.size(); ++i) {
    ld nphi = phi(x,y,z,i);
    if (nphi < phi_min) {
      phi_min = nphi;
      i_min = i;
    }
  }
  
  
  cout<<fixed<<setprecision(6)<<x[i_min]<<" "<<y[i_min]<<" "<<z[i_min]<<endl;
  for (int i = 0; i < x.size(); ++i) {
    cout<<fixed<<setprecision(6)<<(phi(x,y,z,i)-calculate_phi(x,y,z,i))<<endl;
  }
}
