//Exa2.13
clc;
clear;
close;
//given data
R_15=250;// in ohm
R_t2=300 ;// in ohm
alpha=0.0039;// in degree C
t1=15;
//Formula R_t2 = R_15 * [1 + alpha1*(t2 - t1)]
t2=((R_t2/R_15)-1)/alpha+t1;
disp("Temperature when its resistance is 300 ohms is : "+string(t2)+" degree C");
