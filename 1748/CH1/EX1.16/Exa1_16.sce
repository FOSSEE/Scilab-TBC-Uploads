//Exa 1.16
clc;
clear;
close;
//given data
OutputPower=1500;//in KVA
OutputPower=1500*1000;//in VA
V=6600;//in Volt
Ra=0.4;//in Ohm
Xs=6;//in Ohm per phase
pf=0.8;//lagging power factor
//Formula : outputPower=sqrt(3)*VL*IL
Ia=OutputPower/(sqrt(3)*V);//in Ampere
VPerPhase=V/sqrt(3);//in Volts
//formula : Induced EMF, E=sqrt((V*cos_fi+Ia*Ra)^2+(V*sin_fi+Ia*Xs)^2)
cos_fi=0.8;//Unitless
sin_fi=0.6;//Unitless
E=sqrt((VPerPhase*cos_fi+Ia*Ra)^2+(VPerPhase*sin_fi+Ia*Xs)^2);//in volt
disp(E,"Induced emf in volt : ");
disp("As excitation remains constant, E at 4364 volt remains constant.");
E=4364;//in Volt
disp("Let the terminal voltage for the same excitation and load current at 0.8 power factor leading be V.");
disp("4364=sqrt((V*cos_fi+Ia*Ra)^2+(VPerPhase*sin_fi+Ia*Xs)^2)");
disp("V=4743 Volts");
V=4743;//in Volts
TerminalVoltage=sqrt(3)*V;//in Volts
disp(TerminalVoltage,"Terminal voltage line to line in Volts : ");
//Note ans of 1st part is wrong in the book.s