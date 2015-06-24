//Calculating additional resistance required
//Chapter 4
//Example 4.23
//page 320
clear;
clc; 
disp("Example 4.23")
// we know (Ts/Tm)=((2*a)/(1+a^2))
//where  a=(R2/X20)
//at starting contion since Tm=Ts
disp("At starting contion since Tm=Ts")
a=1     //we obtain from the relations
R2=0.05;                    //circuit resistance in ohms
X2=0.4;                    //standstill reactance in ohms
r=(a*X2)-R2;                //r is the extra that is added to the rotor circuit
printf("extra resistance added,r=%fohms",r)

