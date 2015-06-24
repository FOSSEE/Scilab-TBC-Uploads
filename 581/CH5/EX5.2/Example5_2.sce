
clear;
clc;

printf("\t Example 5.2\n");

d1=0.1; // diameter of sphere, m
T1=303; // environment temp.,K
T2=278; // fridge temp., K
h=6; //convection coefficient, W/(m^2*K)
k=0.603; //thermal conductivity,W/(m*K)
a=997.6; // density of water, kg/m^3
c=4180; //heat capacity, J/(kg*K)

F=(k/(a*c))*3600/(d1^2)/4;
a1=0.85 // Biot no.=1/2.01 therefore we read from fig. in upper left hand corner
Tcen=a1*(T1-T2)+T2;  // temperature of the center of apple after 1 hour
Tc=Tcen-273;
printf("\t temperature after an hour is : %.1f C\n",Tc);

a2=(283-T2)/(T1-T2); 
F1=1.29 //Bi is still 1/2.01, by looking at the graph we can find time.

t=F1*a*c*0.0025/0.603-2;
printf("\t time to bring the temp equal to 283k is : %.0f s or 6 hr 12 min\n",t);
//finally we look up at Bi=1/2.01 and fouling factor is 1.29, for spheres heta removal is 43.67 kJ per apple.
x=43.67;   //heat removal for an apple
X=12*x;   //total heat removal,kJ

printf("\t total energy removal is :%.0f kJ\n",X);
//end