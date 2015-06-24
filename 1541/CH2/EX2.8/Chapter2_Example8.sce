//Chapter-2, Example 2.8, Page 2.14
//=============================================================================
clc
clear

//INPUT DATA
Io=6;//No load prmary current in A
cosqo=0.2;//Primary no load power factor 
I2=125;//Secondary load current in A
cosq2=0.8;//Secondary load power factor 
V1=400;//Primary terminal voltage in V
V2=100;//Secondary terminal voltage in V

//CALCULATIONS
K=(V2/V1);//Voltage transformation ratio
I2i=(K*I2);//Secondary current in A
q=(acos(cosqo)-acos(cosq2));//Value of angle in degees
I1=sqrt((Io^2)+(I2i^2)+(2*Io*I2i*cos(q)));//Primary current in A

//OUTPUT
mprintf('Primary current is %3.2f A',I1)

//=================================END OF PROGRAM==============================
