clc;
//Example 28.5
//page no 433
printf("\n Example 28.5 page no 433\n\n");
//we have to determine the number if filtering bags required and cleaning frequency for a plant equipped with a fabric system
q=50000//volumetric flow rate of gas stream,acfm
v_f=10//filteration velocity,ft/min
D=1//diameter of filtering bag,ft
L=15//length of filtering bag,ft
S_c=q/v_f//filtering area,ft^2
S=%pi*D*L//area per bag,ft^2
N=S_c/S//no. of bags
printf("\n no. of bags N=%f ",N);
c=0.0007143//dust concentration ,lb/ft^2
P_drop=8//pressure drop ,in H20
t=(P_drop-(0.2*v_f))/(5*c*v_f^2)//time sic ethe bags were cleaned
printf("\n time t=%f min",t);
