//Chapter-2, Example 2.6, Page 2.11
//=============================================================================
clc
clear

//INPUT DATA
Io=6;//No load primary current in A
cosq=0.3;//Power factor
V1=220;//Primary voltage in V
V2=2200;//Secondary voltage in V

//CALCULATIONS
Wo=(V1*Io*cosq);//Core loss in W
Iw=(Io*cosq);//Iron loss current in A
Im=sqrt(Io^2-Iw^2);//Magnetsising current in A

//OUTPUT
mprintf('(a)Core loss is %3.0f W\n(b)Iron loss current is %3.1f A\n(c)Magnetising current is %3.2f A',Wo,Iw,Im)

//=================================END OF PROGRAM==============================
