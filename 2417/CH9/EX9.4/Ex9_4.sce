//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 9.4\n\n\n");
// Chapter 9 : Gas Power Cycles
// Problem 9.4  (page no. 465) 
// Solution

//For an Otto cycle,
rc=7; //Compression Ratio Rc=v2/v3
q=50; //Unit:Btu/lbm //Heat added
p2=14.7; //Unit:psia //pressure at point 2
T2=60+460; //temperatures converted to absolute temperatures; //Unit:R
cp=0.24; //Unit:Btu/(lbm*R) //Specific heat constant for constant pressure process
cv=0.171; //Unit:Btu/(lbm*R) //Specific heat constant for constant volume process
R=53.3; //Unit:ft*lbf/lbm*R //constant of proportionality
k=1.4;  //It is apparent incerease in compression ratio yields an increased cycle efficiency
//Refering to figure 9.9,
//At (2),we need v2.
//p2*v2=R*T2
v2=(R*T2)/(p2*144); //Unit:ft^3/lbm //1ft^2=144 in^2 //specific volume at point 2
printf("At point (2),\nspecific volume v2=%f ft^3/lbm\n\n",v2);
//For The isentropic path (2)&(3),p3*v3^k=p2*v2^k,so
//So,p3=p2*(v2/v3)^k;
p3=p2*rc^k; //Unit:psia //pressure at point 3
printf("At path(2)&(3)\n");
printf("pressure p3=%f psia\n",p3);
v3=v2/rc; //Unit:ft^3/lbm //specific volume at point 3
printf("specific volume v3=%f ft^3/lbm\n",v3);
T3=(p3*v3*144)/R; //Unit:R //1ft^2=144 in^2 //temperature at point 3
printf("temperature T3=%f R\n\n",T3);
printf("At point(4),\n");
//To obtain the values at (4),we note
v4=v3; //Unit:ft^3/lbm //specific volume at point 4
printf("specific volume v4=%f ft^3/lbm\n",v4);
//qin=cv*(T4-T3)
T4=T3+(q/cv); //Unit:R //temperature at point 4 
printf("temperature T4=%f R\n",T4);
//For p4,
p4=(R*T4)/(144*v4); //Unit:psia //1ft^2=144 in^2 //pressure at point 4
printf("pressure p4=%f psia\n\n",p4);
//The last point has the same specific volume as (2),giving
printf("At last point,\n");
v5=v2; //Unit:ft^3/lbm //specific volume at point 5
printf("specific volume v5=%f ft^3/lbm\n",v5);
//The isentropic path equation,p5*v5^k=p4*v4^k,so
p5=p4*(v4/v5)^k; //Unit:psia //pressure at point 5
printf("pressure p5=%f psia\n",p5);
T5=(p5*v5*144)/(R); //Unit:R //1ft^2=144 in^2 temperature at point 5
printf("temperature T5=%f R\n\n",T5);
n=(((T4-T3)-(T5-T2))/(T4-T3))*100; //The efficiency of the cycle
printf("The efficiency of the cycle is %f percentage",n);
