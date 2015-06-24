//Chapter-2, Example 2.7, Page 2.12
//=============================================================================
clc
clear

//INPUT DATA
V1=200;//Primary voltage in V
V2=2000;//Secondary voltage in V
Io=7;//Primay no load current in A
Wo=180;//Primary no load power in W
R1=0.05;//Primary winding resistance in ohm

//CALCULATIONS
Fe=(Wo-(Io^2*R1));//Iron loss or core loss alone in W
cosq=(Wo/(V1*Io));//No load power factor
Iw=(Wo/V1);//Working component of current in A
Im=sqrt(Io^2-Iw^2);//Magnetising current in A

//OUTPUT
mprintf('(a)The core loss is %3.2f W\n(b)No load power factor is %3.3f lagging\n(c)Working component of current is %3.1f A\n(d)Magnetising current is %3.2f A',Fe,cosq,Iw,Im)

//=================================END OF PROGRAM==============================
