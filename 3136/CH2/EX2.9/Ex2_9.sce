clear all; clc;
//This numerical is Ex 2_3E,page 31.

N=1500
E=0.74
Q=250*0.00223//0.00223 is conversion factor
printf("Q is equal to %g",Q)
H=18
g=32.2
Q_o=250//before converting Q

disp("From the dimensional specific speed (N_s) and fig2.1 , we select a Francis type pump and efficiency is estimated to be equal to 74%")

N_s=N*(Q_o^0.5)/(H^0.75)
printf("\n N_s is equal to %0.0f rpm(gpm^0.5)/(ft^0.75)",N_s)
disp("To find the approximate size,Figure 2.2 has to be used")

omega=N*%pi/30
printf("\n omega is equal to %0.0f",omega)

omega_s=omega*(Q^0.5)/((g*H)^0.75)
printf("\n omega_s is equal to %0.4f",omega_s)

disp("From figure 2.2, it is obtained that delta_s=3.1")
D=(3.1*(Q^0.5))/((g*H)^0.25)
printf("\n Hence D is equal to %0.3f ft",D)
disp("Hence D is equal to 5.7 in ")

