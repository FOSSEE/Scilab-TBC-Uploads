//Chapter-6,Example 6_20,Page 6-36
clc()

//Given Values:
H=5*10^3           //coercivity of bar magnet in amp/m
l=10*10^-2         //length of solenoid in m
N=50               //No of turns

//Calculations:

//We know that, H=NI/l ,hence
I=l*H/N            //current through solenoid

printf('Current through solenoid is =%.0f Amperes \n',I)
