//To Find the Total Load and Total steady state voltage drop
//Page 336
clc;
clear;

//Length in feet
Lsd=100; //Service Drop Line
Lsl=200; //Secondary Line

SB=75; //Transformer Capacity in kVA
pf=0.9; //Load Power Factor

//From the Tables
ISL=129.17; //Secondary Line Current
ISD=41.67; //Service Drop Current
KSD=0.01683; //Service Drop Cable Constant
KSL=0.0136; //Secondary Cable Constant

//for Transformer
R=0.0101; //Resistance in per unit
X=0.0143; //Reatance in per unit

//From the Diagram
ST=(3+2+8+6)+(5+6+7+4)+(6+7+8+10); //Total Load on transformer

STpu=ST/SB; //In Per unit;

//The Above value also corresponds to the Current as Well

I=STpu; //Current in Per Unit

VDT=I*((R*pf)+(X*sind(acosd(pf)))); //Voltage Drop in the Transformer
VDSL=KSL*(Lsl*ISL/(10^4)); //Secondary Line
VDSD=KSD*(Lsd*ISD/(10^4)); //Service Drop Line

VD=VDT+VDSD+VDSL; //Total Voltage Drop

printf('\na)The Load in transformer is %g kVA or %g pu\n',ST,STpu)
printf('b) The Total Voltage Drop is %g pu V\n',VD)
