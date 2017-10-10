//Example 15_1
clc();
clear;
//To find the value of q and how many electrons must be removed and fraction of atoms lost
dist=2     //Units in meters
f=0.0294   //Units in N
s=9*10^9 //Units in N meter^2/C^2
q=sqrt((dist^2*f)/s)  //Units in C
printf("The value of q is=%.8f C\n",q)
charge=3.61*10^-6 //Units in C
c_elec=1.6*10^-19     //Units in C
n=charge/c_elec   //Units in number
printf("Number of electrons to be removed is=")
disp(n)
f1=3*10^22   //Units in number
fraction=n/f1   //Units of number
printf("Fraction of atoms lost is=")
disp(fraction)
