//Chapter-5, Example 5.16, Page 196
//=============================================================================
clc
clear

//INPUT DATA
D=0.08;//Diameter of the cylinder in m
L=0.16;//Length of the cylinder in m
Ti=800;//Initial tempertaure in degree C
Tm=30;//Temperature of the medium in degree C
h=120;//Heat transfer coefficient in W/m^2.K
t=(30*60);//Time for cooling in s
k=23.5;//Thermal conductivity in W/m.K
a=0.022;//Thermal diffusivity in m^2/h

//CALCULATIONS
Bi2=(h*(D/2))/k;//2 times the Biot number
X=(a*t)/(D/2)^2;//X for calculating C(R)
CR=0.068;//From Fig.5.10 on page no.187
Bi1=(k/(h*L));//Biot number
Y=(a*t)/L^2;//Y for calculating P(X)
PX=0.54;//From Fig.5.7 on page no.183
T=CR*PX;//Temperature at the centre of the cylinder in degree C
T30=T*(Ti-Tm)+Tm;//Temperature at the centre of cylinder 30 minutes after cooling is initiated in degree C

//OUTPUT
mprintf('Temperature at the centre of cylinder 30 minutes after cooling is initiated is %3.2f degree C',T30)

//=================================END OF PROGRAM==============================
