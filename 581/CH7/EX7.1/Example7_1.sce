
clear ;
clc;

printf("\t Example 7.1\n");
D=0.001;    //diameter of tube,m
T1=293;      // temperature of cold water, K
T2=347;     // temperature of hot water, K
T3=320;     //operating temperature of hot water, K
Q=6000;    //heat flux,W/m^2
v=0.2 ;   //speed of water,m/s
k=0.6367;    //thermal conductivity,W/(m*K)
v1=1.541*10^-7;   // molecular diffusivity, m^2/s
v2=0.556*10^-6;    //molecular diffusivity, m^2/s

Re=D*v/v2;    //reynolds no.

L=D*(54-11/48*Q*D/k)*v*k/(4*Q*v1);    //length that is down the tube for water reach to 74 C at its hottest point,m
printf("length that is down the tube for water reach to 74 C at its hottest point is : %.3f m ,while we did not evaluate the thermal entry length here, it may be shown to be much, much less than 1785 diametres.\n",L);
//end