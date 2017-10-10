//Example 2_2
clc;funcprot(0);
// Given data
Pdr=400*10^6; // Per day requirement in L
Pdr=Pdr/10^3;// convert L to m^3
Aw=30000*10^6;// Available water in the dam in m^3

//Calculation
n=(Aw)/(Pdr);// days
printf('No.of days water supplied,N=%0.0f days\n',n);
