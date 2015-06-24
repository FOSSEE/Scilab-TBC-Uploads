clc
clear
//Input data
D=0.15;//Diameter of a cylinder of a single acting reciprocating air compressor in m
L=0.2;//Length of the stroke in m
P1=1;//The pressure at which compressor sucks air in bar
P2=10;//Final pressure in bar
T1=298;//Initial Temperature in K
N=150;//Operating speed of the compressor in rpm
n=1.3;//Polytropic index of the process

//Calculations
V1=((3.14*D^2*L)/4);//Volume of air before compression in m^3
W=((n/(n-1))*P1*10^5*V1*((P2/P1)^((n-1)/n)-1));//Work done by the compressor for a polytropic compression of air in Nm
Pi=((W*N)/60)/1000;//Indicated power of the compressor in kW

//Output
printf('The indicated power of the compressor is %3.3f kW',Pi)
