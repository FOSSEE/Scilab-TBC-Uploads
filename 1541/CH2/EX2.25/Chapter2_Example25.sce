//Chapter-2, Example 2.25, Page 2.44
//=============================================================================
clc
clear

//INPUT DATA
V1=2200;//Primary volatge in V
V2=220;//Secondary voltage in V
K=(V2/V1);//Voltage transformation ratio
R1=0.3;//Primary resistance in ohm
R2i=0.24;//Equivalent secondary resistance in ohm
Ro=300;//No load resistance in ohm
RL=0.4;//Load resistance in ohm
X1=0.8;//Primary reactance in ohm
X2i=0.9;//Equivalent secondary reactance in ohm
Xo=1100;//No load reactance in ohm
XL=0.3;//Load reactance in ohm

//CALCULATIONS
ZLi=(complex(RL,R1)/K^2);//Equivalent load impedence in ohm
Z1=complex(R1,X1);//Primary impedence 
Z2i=complex(R2i,X2i);//Equivalent secondary impedence
Zo=complex(Ro,Xo);//No load impedence 
Zeq=((Zo*(Z1+Z2i+ZLi))/(Zo+Z1+Z2i+ZLi));//Equivalent impedence
I1=(V1/Zeq);//Primary current in A
I2i=((I1*Zo)/(Zo+Z1+Z2i+ZLi));//Equivalent secondary current in A
Io=((I1*((Z1+Z2i+ZLi)/(Zo+Z1+Z2i+ZLi))));//No load current in A
Pi=(V1*sqrt((real(I1))^2+(imag(I1))^2)*cosd(atand(imag(I1)/real(I1))))/1000;//Input power in kW
Pcu1=(((real(I1))^2+(imag(I1))^2)*R1);//Primary copper losses in W
Pcu2=(((real(I1))^2+(imag(I1))^2)*R2i);//Primary copper losses in W
C=(((real(Io))^2+(imag(Io))^2)*Ro);//Constant losses in W
n=(((Pi*1000)-Pcu2-C)/(Pi*1000))*100;//Efficiency
R=((V1-(sqrt((real(I2i))^2+(imag(I2i))^2)*sqrt((real(ZLi))^2+(imag(ZLi))^2)))/((sqrt((real(I2i))^2+(imag(I2i))^2)*sqrt((real(ZLi))^2+(imag(ZLi))^2))))*100;//Percentage Regulation

//OUTPUT
mprintf('Efficiency is %3.1f percent \nRegulation is %3.2f percent',n,R)

//=================================END OF PROGRAM==============================
