// Example 1.19

clear; clc; close;
format('v',8);
// Given data
P=4;//in poles
Pout=37;//in HP
f=50;//in Hz
N=1425;//in rpm
MechLoss=3;//in HP
StatorLoss=2500;//in watts
VL=500;//in volt
cosfi=0.9;//power factor

//Calculations
Ns=120*f/P;//in rpm
S=(Ns-N)/Ns;//slip
disp(S,"(i) Slip is :  ");
Pout=Pout*735.5;//in Watts
MechLoss=MechLoss*735.5;//in Watts
Pin=Pout+MechLoss;//in Watts
//Formula : P2:Pc:Pin=1:5:1-S
Pc=(S/(1-S))*Pin;//in watts
disp(Pc,"(ii) Rotor Cu Loss in watts : ");
P2=Pc/S;//in Watts
Pin=P2+StatorLoss;//in watts
disp(Pin,"(iii) Total power input in watts : ");
Eta=Pout/Pin*100;//in %
disp(Eta,"(iv) Efficiency in % : ");
fr=S*f;//in Hz
fr=fr*60;//in cycles/min
disp(fr,"(v) No. of cycles per minute : ");
//Part (ii) & (iii) answer is wrong in the book.
