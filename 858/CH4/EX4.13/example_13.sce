clc
clear 
printf("example 4.13 page number 146\n\n")

//to find the tube length
density=1000    //in kg/m3
viscosity=1*10^-3   //in Pa s
P=100*1000    //in Pa

vdP=P/density;

Q=2.5*10^-3/(24*3600)
A=3.14*(0.0005)^2/4;
u=Q/A;
printf("u = %f m/s",u)

Re=density*u*0.0005/viscosity;
printf("\n\nRe = %f",Re)

//F=18.86*L
L=(-u^2+vdP)/18.86;
printf("\n\nL = %f m",L)
