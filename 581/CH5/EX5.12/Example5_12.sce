
clear;
clc;

printf("\t Example 5.12\n");

l=0.04; // length of square rod, m
T1=373; // temerature of rod, K
T2=293; // temperature of coolant,K
h=800; //convective heat transfer coefficient, W/(m^2*K)

a1=0.93; // ratio of temperature difference for Fo1=0.565, Bi1=0.2105, (x/l)1=0
a2=0.91; // ratio of temperature difference for Fo2=0.565, Bi2=0.2105, (x/l)2=0.5
a=a1*a2; //ratio of temperature difference at the axial line of interest

T=(T1-T2)*a+T2; //temperature on a line 1 cm. from one side and 2 cm. from the adjoining side after 10 sec.
Ta=T-273;

printf("\t temperature is : %.2f C\n",Ta);
//end