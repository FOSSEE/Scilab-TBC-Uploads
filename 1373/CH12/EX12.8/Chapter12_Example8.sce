//Chapter-12, Example 12.8, Page 516
//=============================================================================
clc
clear

//INPUT DATA
Ti=18;//Inlet temperature of Shell fluid in degree C
To=6.5;//Outlet temperature of Shell fluid in degree C
ti=-1.1;//Inlet temperature of Tube fluid in degree C
to=2.9;//Outlet temperature of Tube fluid in degree C
U=850;//Overall heat transfer coefficient in W/m^2.K
Q=6000;//Design heat load in W

//CALCULATIONS
T=(Ti-to);//Temperature difference between shell side inlet fluid and tube side outlet fluid in degree C
t=(To-ti);//Temperature difference between shell side outlet fluid and tube side inlet fluid in degree C
Tlm=((T-t)/log(T/t));//LMTD for a counterflow arrangement in degree C
P=((to-ti)/(Ti-ti));//P value to calculate correction factor
R=((Ti-To)/(to-ti));//R value to calculate correction factor
F=0.97//Taking correction factor from fig. 12.9 on page no.514
A=(Q/(U*F*Tlm));//Area of shell aand tube heat exchanger in m^2

//OUTPUT
mprintf('Area of shell-and-tube heat exchanger is %3.2f m^2',A)

//=================================END OF PROGRAM==============================
