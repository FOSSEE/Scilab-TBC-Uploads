//Exa 1.24
clc;
clear;
close;
//given data
BETAac=100;//unitless
BETAdc=100;//unitless
VT=25;//in mvolts
VEE=15;//in volts
VCC=15;//in volts
VBE=0.7;//in volts
VEB=-0.7;//in volts
R2=2.2;//in kohm
RC1=2.5;//in kohm
RC6=1.2;//in kohm
RE8=1.2;//in kohm
disp("The given circuit is consist of three stages as :");
disp("(i) Dual input balanced output differential amplifier comprising of Q1 and Q2.");
disp("(ii) Dual input unbalanced output differential amplifier comprising of Q5 and Q6.");
disp("(iii) Level shifter circuitcomprising of Q8 and RE8.")
disp("Transistor Q3,Q4,Q7 & Q9 serves to form current multiple source, to give I3=I7=I9=I2");
I2=(VEE-VBE)/R2;//in mA
IC3=I2;//in mA
IC7=I2;//in mA
IC9=I2;//in mA
IC1=I2/2;//in mA
IC2=IC1;//in mA
IC5=IC1;//in mA
IC6=IC1;//in mA
IC8=I2;//in mA
IC9=I2;//in mA
// calculation of collector to emitter voltages 
VC1=VCC-IC1*RC1;//in Volts
VC2=VC1;//in Volts
VCE1=VC1-VEB;//in Volts
VCE2=VCE1;//in Volts
VE5=VC1-VBE;//in Volts
VE6=VE5;//in Volts
VC6=VCC-RC6*IC6
VCE5=VCC-VE5;
VCE6=VCC-VE6;
VE8=VC6-VBE;
VCE8=VCC-VE8;
// calculation of ac emitter resistances 
re1=VT/IC1;//in ohm
re2=re1;//in ohm
re5=re1;//in ohm
re6=re1;//in ohm
re8=VT/IC8;//in ohm
//input resistance of second stage is
Ri2=2*BETAac*re6*10^(-3);//in kohm
// voltage gain of first stage
Ad1=(((RC1*Ri2)/(RC1+Ri2)))/(re1*10^(-3));
//input resistance of third stage is
Ri3=BETAac*(re8+RE8);//in kohm
// voltage gain of second stage
Ad2=(((RC6*Ri3)/(RC6+Ri3)))/(2*re6*10^(-3));
Ad3=1;
//Overall gain of the circuit
Ad=Ad1*Ad2*Ad3;
disp("Maximum peak to peak output voltage swing is determined by the voltage drop across the collector resistor RC6 of second stage, as the third stage is the level shifter circuit with unity voltage gain.")
//voltage drop across collector resistor
VRC6=IC1*RC6;//in volts
//Maximum peak to peak output voltage swing
Vopp=3.9;// in volt
//// part (i)
disp("The operating point for each transistor :");
disp("For transistor 1");
disp(IC1,"IC1 in mA is :");disp(VCE1,"VCE1 in Volt is :");
disp("For transistor 2");
disp(IC2,"IC2 in mA is :");disp(VCE2,"VCE2 in Volt is :");
disp("For transistor 5");
disp(IC5,"IC5 in mA is :");disp(VCE5,"VCE5 in Volt is :");
disp("For transistor 6");
disp(IC6,"IC6 in mA is :");disp(VCE6,"VCE6 in Volt is :");
disp("For transistor 8");
disp(IC8,"IC8 in mA is :");disp(VCE8,"VCE8 in Volt is :");
//// part (ii)
disp(Ad,"Overall voltage gain of the circuit is : ");
//// part (iii)
disp(Vopp,"Maximum peak to peak output voltage swing is ");
//note :answer in the book is not as much accurate as calculated by scilab