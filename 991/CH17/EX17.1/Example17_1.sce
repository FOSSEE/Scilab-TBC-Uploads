//Example 17.1.
clc
format(5)
disp("We know that")
disp("  fo = 1 / (2.303*RE*CE*log10(1/1-eta))")
disp("We know that etamin = 0.56")
disp("For determining RE, we have")
RE=(20-2.9)/(1.6) // in k-ohm
disp(RE,"RE < VBB-VP/IP, i.e.  RE(k-ohm) < 20-2.9/1.6*10^-3 =")
RE=(20-1.118)/(3.5) // in k-ohm
disp(RE,"RE > VBB-VV/IV, i.e.  RE(k-ohm) < 20-1.118/3.5*10^-3 =")  // answer in textbook is wrong
disp("Therefore, RE is selected as 10 k-ohm")
disp("    1/500 = 2.303*10*10^3*CE*log10(1/1-0.56)")
CE=1/(500*(2.303*10^4)*0.36) // in farady
x1=CE*10^6 // in uF
disp(x1,"Therefore,  CE(uF) =")
disp("So, CE is selected as 0.22 uF")
disp("Let the required pluse voltage at B1 = 5V")
disp("Let the peak pulse current, IE = 250 mA")
R1=5/(250*10^-3) //in ohm
disp(R1,"Therefore,  R1(ohm) = VR1/IE =")
disp("So, R1 is selected to be 22 ohm")
disp("We select the voltage characteristics for VB1B2 = 4 V")
disp("Therefore,  VR2 = 20-(4+5) = 11 V")
R2=11000/250
disp(R2,"  R2(ohm) = 11*10^3/250 =")
disp("So, R2 is selected as 100 ohm")