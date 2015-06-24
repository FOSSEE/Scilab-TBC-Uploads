// Chapter 9_The bipolar transistor
//Caption_Breakdown voltage
//Ex_8//page 387
Wb=0.5*10^-4    //metallurgical base width
NB=10^16
eps=11.7*8.85*10^-14
e=1.6*10^-19
Vpt=25    //punch through voltage
x=Vpt*2*eps/(e*Wb^2*NB) 
y=x-1
NC=NB/y
xn=(2*eps*(Vpt)*NB/(e*NC*(NB+NC)))^0.5*10000
printf('The collector doping is %1.2f per cm^3 and collector widt is %1.2f micrometer',NC,xn)