// Example 9.2
// Computation for VCEQ and re' for case(a),o/p overall gain, gain,i/p resistance, overall current gain & o/p resistance for case(b),minimum value of Ce for case(c)//
// Page no.370

clc;
clear;
close;

//Given data
hFE=100;
hfe=150;
Rc_A=2.2*10^3;
VBB=2.79;
VBEQ=0.7;
Rb=7.67*10^3;
Re1=0;
Re2=2.2*10^3;
VCC=12;
Rc_B=0;
RL=47*10^3;
R1=33*10^3;
R2=10*10^3;
Rs=600;
fs_min=1000;

//..................................(A).....................................//

//Calculation for collector current//
//for Re2=0:
ICQ=hFE*((VBB-VBEQ)/(Rb+(hFE*(Re1+Re2))));

//Calculation for quiescent collector to emitter voltage//
VCEQ=VCC-ICQ*Re2;

//Calculation for re_dash//
re_dash=(26*10^-3)/ICQ;//IEQ=ICQ

//...................................(B)....................................//

//Calculation for resistance of the parallel combination of Rc and Rl1//
Rl2e=(Re2*RL)/(Re2+RL);

//Calculation for Rth//
Rth=1/((1/Rs)+(1/R1)+(1/R2));

//Calculation for overall voltage gain of the amplifier//
Av2s=((hfe*Rl2e)/(Rth+hfe*(re_dash+Rl2e)))*(((R1*R2)/(R1+R2))/(Rs+(R1*R2)/(R1+R2)));

//Calculation for input resistance at the base//
Rin_base=hfe*re_dash;

//Calculation for total input resistance//
Rin_total=((1/R1)+(1/R2)+(1/Rin_base))^-1;

//Calculation for overall current gain//
AIs=((hfe*(Rs+Rin_total))/(Rth+(hfe*(re_dash+Rl2e))))*(((R1*R2)/(R1+R2))/(Rs+(R1*R2)/(R1+R2)));

//Calculation for output resistance//
Rout=Re2*(Rth+hfe*re_dash)/(Rth+hfe*(re_dash+Re2));

//...................................(C)....................................//

//Calculation for the minimum value Ce1_min of the coupling capacitor Ce//
Ce_min=1.59/(fs_min*(Rout+RL));

//Displaying the result in command window
printf("\n ......................(A)............................");
printf('\n Collector current = ICQ = %0.2f mA',ICQ*10^3);
printf('\n Quiescent collector to emitter voltage = VCEQ = %0.2f V',VCEQ);
printf('\n Value of re_dash = %0.2f K',re_dash);
printf("\n \n ......................(B)............................");
printf('\n Overall voltage gain of the amplifier = %0.2f ',Av2s);
printf('\n Rl2e = %0.1f K',Rl2e*10^-3);
printf('\n Rth = %0.0f ohm',Rth);
printf('\n Input resistance at the base = %0.2f K',Rin_base*10^-3);
printf('\n Total input resistance = %0.2f K',Rin_total*10^-3);
printf('\n Overall current gain = AIs = %0.2f ',AIs);
printf('\n Output resistance = Rout = %0.1f ohm',Rout);
printf("\n \n ......................(C)............................");
printf('\n The minimum value Ce1_min of the coupling capacitor Ce = %0.1f nF',Ce_min*10^9);

//Answers are varying due to round off error//
