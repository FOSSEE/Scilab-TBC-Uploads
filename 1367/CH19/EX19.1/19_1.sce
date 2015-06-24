//Find flexural rigidity of sandwich construction
//Ex:19.1
clc;
clear;
close;
t_s=3;//in mm
t_c=24;//in mm
b=100;//in mm
d=(t_s+t_c)/2;//in mm
is=((b*t_s^3)/12)+(b*t_s*d^2);//in mm^4
ic=b*t_c^3/12;//in mm^4
m_p=7000;//moduli of polyester skin in N/mm^2
m_f=20;//moduli of foam core in N/mm^2
d_fr=(2*m_p*is)+(m_f*ic);//in N/mm^2
disp(d_fr,"Flexural rigidity (in N/sqm) = ");