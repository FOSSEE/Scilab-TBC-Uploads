//chapter 8 example 1//
clc
clear
//photo current of the dode=Ip,quantam efficiency=n,wavelength=l,plancks constant=h,speed of light=c,power at given wave length=Po,total shot noise=i2,thermal noise in the load resistor=i2th,dark current=Id,post detection bandwidth of the receiver=B//
n=0.50;//quantam efficiency//
e=1.6*(10^-19);//charge of the electron//
l=0.85*(10^-6);//in mts//
h=6.63*(10^-34);//plancks constant//
c=3*(10^8);
Po=250*(10^-9);
Ip=((n*e*Po*l)/(h*c))*(10^9);
printf("\n a) photo current in the dode=%f nA\n",Ip)
Id=4;//in nano amperes//
B=8*(10^6);
i2=sqrt((2*e*B*(Ip+Id))*(10^11));
printf("\n b) total shot noise=%f*(10^-10) A\n",i2)
Kb=1.38*(10^-23);
T=300;
Rl=6000;
ith=sqrt(((4*Kb*T*B)/Rl)*(10^18));
printf("\n c) thermal noise generated=%f*(10^-9) A\n",ith)