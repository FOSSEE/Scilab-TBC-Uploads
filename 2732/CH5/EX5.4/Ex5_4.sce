clc
//initialization of variables
clear
// linked to 5_3
P=3 //tonne
E=2*10^6 //kg/cm^2
d_0= 1 //cm
d_l=2.8 //cm
// calculations
e=4*P*1000*d_l*10^3/(d_l^2*%pi*E*(1-((d_l-d_0)/d_l)))
//results
printf('The total elongation is %.2f cm',e)
