clear
clc
Co=1;k=1;t=1;//given
//Scheme A
//For mixed flow reactor
//t=(Co-C1)/KC1^2
C1=(-1+sqrt(1-4*t*(-Co)))/2*t;
//For the plug flow reactor
//t=1/k(1/C2-1/C1)
C2=C1/(1+k*t*C1);
printf("\n Conversion for flow scheme A is %f",C2)
//Scheme B
//For plug flow
C3=Co/(1+k*t*Co);
//For mixed flow reactor
C4=(-1+sqrt(1-4*t*(-C3)))/2*t;
printf("\n Conversion for flow scheme B is %f",C4)
//Scheme C,D,E
//Using exit age distribution fn for 2 equal plug-mixed flow reactor system,using fig 12.1
t_bar=2;
in=1000;
C5=integrate('(2/t_bar)*(exp(1-2*t/t_bar))/(1+Co*k*t)','t',t_bar/2,in);
printf("\n Conversion for flow scheme C,D,E is %f",C5)

