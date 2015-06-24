//Chapter-5, Example 5.23, Page 183
//=============================================================================
clc
clear
//INPUT DATA
V=240;//voltage in volts
f=50;//frequency in Hz
R=15;//resisitance in ohms
I=22.1;//current in A
//CALCULATIONS
G=1/R;//conductance in mho
//susceptance of the circuit,B=1/(Xl)=0.00318/L
//admittance of the circuit,(G-jB)=(0.067-j(0.00318/L))
Y=I/V;//admittance in mho;
//Y=sqrt((0.067)^2+(0.00318/L)^2)=0.092-----eqn(1)
//solving eqn(1) for L we have it as
L=sqrt((0.00318)^2/((Y)^2-(G)^2));//inductance in henry
//when current is 34A
I1=34;//current in A
Y1=I1/V;//admittance in mho
//for Y1 we need to find f 
f1=sqrt((3.183)^2/((Y1)^2-(G)^2));//frequency in hz
mprintf("Thus value of frequency when current is 34A is %2.1f Hz",f1);
//=================================END OF PROGRAM======================================================================================================
