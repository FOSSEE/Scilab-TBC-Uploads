//Example 3.2, Page Number 101
//Half Wave Voltage
clc;

//Variable Initialization
l=1.06*(10**-6) //Wavelength in meter
no=1.51//Value for KDP taken from table 3.1
r=10.6*(10**-12)//Linear Electro Optic Coefficient in pm per volt for KDP taken from table 3.1

//Using Data from table 3.1 on page no. 100
V=l/(2*r*(no**3)) //V is the Half Wave Voltage

mprintf("\n");
disp(V,"The Half Wave Voltage for KDP in V:");
