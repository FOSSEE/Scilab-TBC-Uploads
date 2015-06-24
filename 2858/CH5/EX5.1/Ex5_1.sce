//example 5.1
clc; funcprot(0);
//first solution
B1=2.5;
B2=B1;
z=12.5;
L1=5;
L2=L1;
m=B1/z;
n=B2/z;
//from table of tthe values using m,n
q=2000;
I=0.0328;
deltasigma=q*4*I;
disp(deltasigma,"change in pressure in lb/ft^2");
//second solution
Ic=0.131;//from table
deltasigma=q*Ic;
disp(deltasigma,"change in pressure in lb/ft^2");

