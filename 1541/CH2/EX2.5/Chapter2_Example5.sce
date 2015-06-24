//Chapter-2, Example 2.5, Page 2.10
//=============================================================================
clc
clear

//INPUT DATA
Io=0.8;//No load primary current in A
Wo=75;//No load primary poewr in W
V1=220;//Primary voltage in V
f=50;//Supply frequency in Hz

//CALCULATIONS
Iw=(Wo/V1);//Iron loss component in A
Im=sqrt(Io^2-Iw^2);//Magnetising component in A

//OUTPUT
mprintf('Iron loss component is %3.2f A \nMagnetising component is %3.3f A',Iw,Im)

//=================================END OF PROGRAM==============================
