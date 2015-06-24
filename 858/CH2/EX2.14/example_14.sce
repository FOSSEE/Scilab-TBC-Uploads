clc
clear 
printf("example 2.14 page number 75\n\n")

//to find the molar mass and osmotic pressure

K=1.86;
c=15   //concentration of alcohol
delta_t=10.26;

m=delta_t/K;   //molality
M=c/(m*85);    //molar mass
printf("molar mass = %f gm\n\n",M*1000)

density=0.97     //g/ml
cm=c*density/(M*100);
printf("molar concentration of alcohol = %f moles/l\n\n",cm)

p=cm*8.314*293   //osmotic pressure
printf("osmotic pressure = %f Mpa\n\n",p/1000)
