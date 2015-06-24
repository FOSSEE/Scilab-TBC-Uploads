clear;
clc;
printf("\n Example 7.1");
//In the leaf filter filtration is at const pressure from the start
//V^2 + 2ALV/v = 2(-deltaP)A^2t/(ruv)

//In the filter press,a volume V1 of filtrate is obtained under const rate conditions in time t1,and filtration is then carried out at constant pressure.
//V1^2 + 2ALV1/v = 2(-deltaP)A^2t1/(ruv) 
//and (V^2 − V1^2 ) + 2AL/υ(V − V1) = 2(−P)A^2/rμυ(t − t1)

//for the leaf filter
t2 = 300;          //t2 is in secs
V2 = 2.5*10^(-4);   //V2 is in m^3
t3 = 600;           //t3 is in secs
V3 = 4*10^(-4);     //V3 is in m^3
A = 0.05;           //A is in m^2
deltaP = -7.13*10^(4); //it is in N/m^2
//putting these values in above eq

a = [2*7.13*10^(4)*0.05^(2)*300 -2*0.05*2.5*10^(-4);2*7.13*10^(4)*0.05^(2)*600 -2*0.05*4*10^(-4)];
b = [(2.5*10^(-4))^2;(4*10^(-4))^2];
x = inv(a)*b;
y = [1/x(1);x(2)];
printf("\n L/υ=%f*10^(-3)   and rμυ = %f*10^(11)",y(2)*10^3,y(1)*10^(-11));

//for the filter press
V1 = poly([0],'V1');
s = roots(V1^2 + (2.16*y(2)*V1)-(4*10^(5)*2.16^2)/y(1)*180);
printf("\n the value of V1 = %fm^3",s(2));

//For a constant pressure period (t - t1)=900secs
//Calculting the total volume of filtrate
V = poly([0],'V');
d = roots((V^2-3.33*10^(-4))+(1.512*10^(-2)*(V-1.825*10^(-2))-5.235*10^(-6)*900));
printf("\n The value of V = %.3f m^3",d(2));

f = (4*10^(5)*(2.16)^2)/(7.13*10^(11)*(6.15*10^(-2) + 2.16*3.5*10^(-3)));
printf("\n The final rate of filtration is %.2f*10^(-5) m^3/sec",f*10^(5));

// Assuming  viscosity of the filtrate is the same as that of the wash-water
rw_400 = (0.25)*f;
printf("\n Rate of washing at 400 kN/m2 = %.1f*10^(-6) m^3/sec",rw_400*10^(6));

rw_275 = rw_400*(275/400);
printf("\n Rate of washing at 275 kN/m^2 = %.1f*10^(-6) m^3/sec",rw_275*10^6);
printf("\n Thus the amount of wash-water passing in 600s = %.3f m^3",600*rw_275);

















