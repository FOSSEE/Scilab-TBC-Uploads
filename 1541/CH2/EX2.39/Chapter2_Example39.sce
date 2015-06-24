//Chapter-2, Example 2.39, Page 2.72
//=============================================================================
clc
clear

//INPUT DATA
Q=10;//Rating of transformer in KVA
n=0.96;//Full load efficiency
DN=12;//Duration of no load in h
DH=6;//Duration of half load in h
D4=4;//Duration of 1/4th load in h
DF=2;//Duration of full load in h

//CALCULATIONS
O=(Q*1);//Full load output in kW
L=((O/n)-O)*1000;//Full load total losses in W
Fcu=(L/2);//Full load copper ;osses in W
Fc=Fcu;//Constant losses
LN=0;//No load energy delivered for 12 h
LF=(DF*O);//Full load energy delivered for 2 hours
L6=(DH*O*0.5);//Half load energy delivered for 6 hours
L4=(D4*O*0.25);//1/4th load energy delivered for 4 hours
TE=(LN+LF+L6+L4);//Total energy delivered for 24 hours in kWh
LLC=(Fc*24);//Constant losses for 24 h
LLF=(DF*Fc);//Full load copper losses delivered for 2 hours
LL6=(DH*Fc*0.5^2);//Half load copper losses delivered for 6 hours
LL4=(D4*Fc*0.25^2);//1/4th load copper losses delivered for 4 hours
LTE=(LLC+LLF+LL6+LL4)/1000;//Total copper losses delivered for 24 hours in kWh
nall=((TE/(TE+LTE))*100);//All day efficiency

//OUTPUT
mprintf('All day efficiency is %3.1f percent',nall)

//=================================END OF PROGRAM==============================
