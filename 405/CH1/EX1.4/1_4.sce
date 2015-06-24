clear;
clc;
printf("\t\t\tExample Number 1.4\n\n\n");
// heat source and convection
// illustration1.4
// solution

d = 1*10^(-3);//[m] diameter of wire
l = 10*10^(-2);//[m] length of wire
Sarea = 22*d*l/7;//[square meter] surface area of wire
h = 5000;//[W/square meter] heat transfer coefficient
Twall = 114;// [degree celsius]
Twater = 100;// [degree celsius]
//total convection loss is given by equation(1-8)
Q = h*Sarea*(Twall-Twater);// [W]
printf("heat transfer is therefore %f W",Q);
printf(" this is equal to the electric power which must be applied");
