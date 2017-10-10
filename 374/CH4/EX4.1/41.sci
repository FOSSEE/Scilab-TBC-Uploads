//chapter 4 example 1//
clc
clear
//recombination life time=Tr,drive current=I,wavelength=l,total carrier life time=Tp,efficicency=E,internal generated power=Pint//
Tr=50;//in nano seconds//
Tnr=100;//in nano seconds//
Tp=(Tr*Tnr)/(Tr+Tnr);
printf("\n Total carrier combination life time=%fns \n",Tp);
E=Tp/Tr;
printf("\n efficiency=%f \n",E);
h=6.62*(10^-34);//plancks constant//
c=3*(10^8);//speed of light//
I=50*(10^-3);//current in amperes//
l=0.85*(10^-6);//wavelength in metres//
e=1.6*(10^-19)//charge of electron//
Pint=((E*I*h*c)/(e*l)*10^(3));//in milli watts//
printf("\n Internal generated power=%f*mW \n",Pint);
