clear;
clc;
printf("\n Example 4.1");
//Calculating modified reynold's no.
a = 800;                //it is in m^2/m^3
Product_rate = 0.5;     //it is in g/sec
Reflux_ratio = 8;       
Vapour_rate  = 4.5;     //it is in g/sec
G = (4.5*10^(-3))/((%pi/4)*(0.1^2));// units are in kg/m^2.sec
meu = 0.02*10^(-3);               //units are in Ns/m^2
e = 0.72; 

Re1 = G/(800*0.28*0.02*10^(-3));
printf("\n The modified reynolds no. is %d",Re1);

x = 4.17/Re1 + 0.29; //x = R1/(pu1^2)
printf("\n The value of R1/(pu1^2) is %f",x);

l = 16*0.15;         //in meters
//Solving the integral integral of(pdP)from Pc toPs =(R1/pu^2)*S*(1-e)*G^2*l/e^3

Pc = poly([0],'Pc');
y = roots(151.3-(4.73*10^(-5)*(8000^2-Pc^2)));
printf("\n The value of Pc is %dN/m^2",y(1));









