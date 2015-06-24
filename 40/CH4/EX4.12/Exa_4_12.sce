//inverse z transforms from standard transforms
z=%z;
xz=z/((z-0.5)*(z-0.25));
yz=xz/z;
pfss(yz)
//hence x[n]=-4(0.25)^n*un+4(0.5)^n*un;
xz=1/((z-0.5)*(z-0.25));
yz=xz/z;
pfss(yz)
//hence x[n]=-4(0.25)^n-1*u[n-1]+4(0.5)^n-1*u[n-1];

