//Chapter-2, Example 2.23, Page 2.40
//=============================================================================
clc
clear

//INPUT DATA
K=(1000/200);//Voltage transformation ratio
R1=2;//Primary resistance in ohm
R2=200;//Secondary resistance in ohm
Vo=360;//Volts in V

//CALCULATIONS
Z2i=(R2/K^2);//Equivalent secondary impedence in ohm
Zo1=(Z2i+R1);//Equivalent primary impedence in ohm
I1=(Vo/Zo1);//Primary current in A

//OUTPUT
mprintf('Primary current is %3.0f A',I1)

//=================================END OF PROGRAM==============================
