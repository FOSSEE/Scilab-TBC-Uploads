clear all;
clc;
printf("\n Example 13.3");
//From the equilibrium relationship
CB1 = (0.0247*0.685);
printf("\n CB1* = %.4f kmol/m^3",CB1);
CB2 = (0.0247*0.690);
printf("\n CB2* = %.4f kmol/m^3",CB2);

//Thus the driving force at the bottom:
deltaC1 = (0.0169-0.0040);
printf("\n deltaC1 =%.4f kmol/m^3",deltaC1);
//Driving force at the top 
deltaC2 = (0.0170-0.0115);
printf("\n deltaC2 = %.4f kmol/m^3",deltaC2);
function[x]= log_mean_driving_force()
    x = (deltaC1 - deltaC2)/log((deltaC1)/deltaC2);
    funcprot(0);
endfunction
printf("\n log mean driving force is given by deltaClm = %.4f kmol/m^3",log_mean_driving_force());
KBa = (4.125*10^(-8))/(log_mean_driving_force()*0.0063);
printf("\n KBa = %.1f*10^(-4) kmol/sec m^3(kmol/m^3)",KBa*10^4);
HoB = (1.27*10^(-3))/KBa;
printf("\n HoB = %.2f meters",HoB);


