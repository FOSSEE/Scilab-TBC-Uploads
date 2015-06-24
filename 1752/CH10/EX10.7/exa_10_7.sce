//Exa 10.7
clc;
clear;
close;
//given data
format('v',15);
Px1= 0.14;// in bar
Px2= 0;
P=1.013;// in bar
Py1=P-Px1; // in bar
Py2=P-Px2; // in bar
D=8.5*10^-6;// in m^2/s
d=5;// diameter in meter
L=1;// in mm
L=L*10^-3;//in meter
M=78;// molecular weight
Am_x= 1/4*%pi*d^2*M;
R=8314;
del_x=3;// thickness in mm
del_x=del_x*10^-3;// in m
T=20;// in degree C
T=T+273;// in K
P=P*10^5;// in N/m^2
m_x= D*Am_x*P*log(Py2/Py1)/(R*T*del_x);
// The mass of the benzene to be evaporated
mass= 1/4*%pi*d^2*L;
density=880;// in kg/m^3
m_b= mass*density;
toh=m_b/m_x;// in sec
disp(toh,"Time taken for the entire organic compound to evaporate in seconds")


// Note: Answer in the book is wrong



