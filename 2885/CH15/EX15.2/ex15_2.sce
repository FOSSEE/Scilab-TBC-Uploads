//Calculate shunt resistance
clear;
clc;
//soltion
//given

//At I= 1 mA
I1=1*10^-3;//A
Im=0.1*10^-3;//A
Rm=500;//ohm
Rsh=Rm*Im/(I1-Im);
printf("Shunt resistance= %.4f Ω\n",Rsh);


//At I= 1 mA
I2=10*10^-3;//A
Rsh=Rm*Im/(I2-Im);
printf("Shunt resistance= %.4f Ω\n",Rsh);


//At I= 1 mA
I3=100*10^-3;//A
Rsh=Rm*Im/(I3-Im);
printf("Shunt resistance= %.4f Ω\n",Rsh);
