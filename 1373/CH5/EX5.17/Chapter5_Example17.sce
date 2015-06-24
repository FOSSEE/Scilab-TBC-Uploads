//Chapter-5, Example 5.17, Page 197
//=============================================================================
clc
clear


//INPUT DATA
L=[0.5,0.4,0.2];//Lengths of sides of a rectangular steel billet in m
Ti=30;//Initial temperature in degree C
Tf=1000;//Final temperature in degree C
t=(90*60);//Time for heating in s
h=185;//Heat transfer coefficient in W/m^2.K
k=37;//Thermal conductivity in W/m.K
a=0.025;//Thermal diffusivity in m^2/h

//CALCULATIONS
L1=L/2;//L values of the parallelepiped in m
Bi1=(h*L(1))/k;//Biot number
X1=(a*t)/L(1)^2;//X1 for calculating P(X1)
PX1=0.68;//P(X1) value from From Fig.5.7 on page no.183
Bi2=(h*L(2))/k;//Biot number
X1=(a*t)/L(2)^2;//X1 for calculating P(X2)
PX2=0.57;//P(X2) value from From Fig.5.7 on page no.183
Bi3=(h*L(3))/k;//Biot number
Y=(1/Bi3);//Inverse of Biot number
X1=(a*t)/L(3)^2;//X1 for calculating P(X3)
PX3=0.22;//P(X3) value from From Fig.5.7 on page no.183
T=PX1*PX2*PX3;//Temperature at the centre of billet in degree C
T1=T*(Ti-Tf)+Tf;//Temperature at the centre of cylinder 90 minutes after heating is initiated in degree C

//OUTPUT
mprintf('Temperature at the centre of cylinder 90 minutes after heating is initiated is %3.2f degree C',T1)

//=================================END OF PROGRAM==============================
