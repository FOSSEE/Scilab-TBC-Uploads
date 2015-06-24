//Chapter-2, Example 2.24, Page 2.41
//=============================================================================
clc
clear

//INPUT DATA
K=(500/10);//Turn ratio in step up transformer 
Z1=complex(0,6);//Primary reactance in ohm
Z2=complex(20000,-10000);//Secondary impedence in ohm
V1=100;//Primary voltage in V

//CALCULATIONS
Z2i=(Z2/K^2);//Equivalent secondary impedence in ohm
Zo1=(Z1+Z2i);//Equivalent primary impedence in ohm
I1=(V1/Zo1);//Primary current in A
V2i=(I1*Z2i);//Equivalent secondary voltage in V
V2=(K*V2i);//Secondary voltage in V
X=sqrt((real(V2))^2+(imag(V2))^2);//X value for secondary voltage
Y=-(45+atand(imag(V2)/real(V2)));//Phase angle in degree

//OUTPUT
mprintf('Secondary volatge is %3.0f V,%3.1f degree',X,Y)

//=================================END OF PROGRAM==============================
