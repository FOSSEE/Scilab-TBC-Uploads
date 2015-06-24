//Chapter-2, Example 2.18, Page 2.34
//=============================================================================
clc
clear

//INPUT DATA
Q=(40*1000);//Transformer rating in VA
V1=1600;//Primary voltage in V
V2=160;//Secondary voltage in V
f=50;//Frequency in Hz
R=10;//Turn ratio

//CALCULATIONS
K=0.1;//Turn ratio
I2=(Q/V2);//Full load secondary current in A
Z2=(V2/I2);//Load impedence in ohm
Zo1=(Z2/K^2);//Impedence referred to high tension side in ohm
I2i=(K*I2);//Value of current referred to high tension side in A

//OUTPUT
mprintf('(a)Load impedence required for full load current is %3.2f ohm \n(b)Impedence referred to high tension side is %3.0f ohm\n(c)Value of current referred to high tension side is %3.0f A',Z2,Zo1,I2i)

//=================================END OF PROGRAM==============================
