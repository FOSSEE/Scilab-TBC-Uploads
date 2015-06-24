//Chapter-6,Example 6_23,Page 6-38
clc()

//Given Values:
l=1.2             //length of circuit in meter
u=7.3*10^-3       //permeability of silicon sheet
A=100             //cross sectional area in cm^2
N=150             //No of turns
B=0.3             //magmetic field in Wb/m^2

//Calculations:

//We know, B=u*H
H=B/u             //Magnetic field strength

m=H*l             //amp-turns in air gap

I1=m/N            //Required current
printf('Current required to obtain given magnetic field is =%.3f Amperes \n \n',I1)

I=I1/A            //Required current per unit area
printf(' Current required per unit area to obtain given magnetic field is =%.6f Amperes \n',I)
