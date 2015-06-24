//chapter 2
//example 2.3
//page 34
clear;
clc ;
//given
If=50;//in mA
Rl=100;//in ohm
Ef=1.1;//in volts at point Q plotted at If=50mA
//finding voltage across Rl(Ef)
deltaIf=0.05;//in Ampere(when If changes from 50-0 mA)
deltaEf=deltaIf*Rl;//in volts
newEf=Ef+deltaEf;
Es=6.1;//read from point A on load line after joining A and Q
printf('New value of Ef is %.1f V .Therefore Es(supply voltage) is %.1f V',newEf,Es)


