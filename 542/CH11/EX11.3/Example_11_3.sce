//Exaple  11.3

clear;
clc;

printf("\tExample 11.3\n");

k1_B=6.90565;
k2_B=1211.033;
k3_B=220.79;

k1_T=6.95334;
k2_T=1343.943;
k3_T=219.377;

t=338-273;  //in Degree celsius
P=101.3;  //in kN/m^2
xB=0.5;
xT=0.5;

function[p0]=antoine(k1,k2,k3,T)
    p0=10^(k1-(k2/(T+k3)));
    funcprot(0)
endfunction

p0_B=antoine(k1_B,k2_B,k3_B,t)*101.325/760;
p0_T=antoine(k1_T,k2_T,k3_T,t)*101.325/760;

printf("\nP0_B = %.1f kN/m^2\nP0_T = %.1f kN/m^2\n",p0_B,p0_T);

pB=xB*p0_B;
pT=xT*p0_T;
printf("\npB = %.2f kN/m^2 \npT = %.3f\n",pB,pT);

p=pB+pT;
yB=pB/p;
yT=pT/p;
printf("\nyB = %.3f \nyT = %.3f\n",yB,yT);

//End