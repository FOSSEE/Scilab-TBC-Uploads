clear;
//clc();
a=2500;..//usage of the over head line in a year in hrs
cost=20;..//cost of copper per kgf in Rs
dep_rate=0.125;..//depriciation rate
den=8.89;..//density of copper in gf per cm sq
r=0.173;...//resistance per conductor per km length and per sq cm in ohms
cost_en=0.16;..//cost of energy perm unit in Rs

cap_cost=cost*den/100;..//(capitol cost of conductor)*length/area in Rs
dep=cap_cost*dep_rate;

cl=r/10000000;..//copper loss per conductor/current sq*length/area

ce=a*cost_en*cl;..//cost of energy loss per year)*area/(length*current sq)

d=dep/ce;

j=sqrt(d);..//best current density in A/cm sq
printf("\n the current density is: %.2f A/sq meter\n ",j);
