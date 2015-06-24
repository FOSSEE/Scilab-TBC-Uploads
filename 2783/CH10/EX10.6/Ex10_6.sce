clc
//initialization of new variables
clear
T0=2100 //k
P0=3.5 //atm
At=4 //cm^2
Ar=4.0 // Ae/At
Pa=1 //atm
gama=1.4
R=286.6 
//calculations
Me=2.94
Pr=0.030
Tr=0.366
// from Isentropic table for Area ratio = 4
Pe=Pr*P0
Te=T0*Tr
ue=Me*sqrt(gama*R*Te)
re=Pe*10^5/(R*Te)
Ae=At*Ar
Ae=Ae*10^-4
Fx=re*ue^2*Ae+(Pe*10^5-0)*Ae
printf('The thrust in space is %.2f N',Fx)
// at sea level
M1=2.9 
M2=sqrt((2+(gama-1)*M1^2)/(gama*(2*M1^2-1)+1))
P0r=0.358
Ar=3.85 //Isentropic table
Aer=1.433
Me=0.45
Per=0.870
Tr=0.961
// All the values from isentropic table
Pe=P0*P0r*Per
Te=T0*Tr
ue=Me*sqrt(gama*R*Te)
re=Pe*10^5/(R*Te)
Fx=re*ue^2*Ae+(Pe*10^5-Pa*10^5)*Ae
printf('\n The thrust at sea level is %.2f N',Fx)



