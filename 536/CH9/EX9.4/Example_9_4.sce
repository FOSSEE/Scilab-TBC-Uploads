clc;
clear;

printf("\n Example 9.4\n");
T=295; //initial temperature of surfaces
T2f=375; //Final temperature of far surface
dT1=900; //Temperature of near face raised
//The temperature at any distance x from the near face at time t is given by equation 9.37
//Choosing the temperature scale so that the initial temperature is everywhere zero, then:
R=(T2f-T)/(2*(dT1-T)); //ratio of theta to twice of theta dash

//An approximate solution is obtained by taking the first term only, to give:
//   R=erfc(346*t^-0.5)
//erfc(1.30)=R
//solving above equation
x=poly([0],'x');
t=roots((1.30^2*x)-346^2);
printf("\n Time taken to rise from 295 to 375 K = %.1f h",t/3600);