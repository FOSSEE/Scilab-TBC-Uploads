// Example 9.1
// Computation for ICQ and VCEQ for case(a),o/p voltage Vo, overall gain of amplifier, gain by the transistor, i/p resistance at base, total i/p resistance, overall current gain & o/p resistance for case(b),minimum value of Re2 ofr case(c) and minimum values of capacitors Cb, Cc and Ce for case(d)//
// Page no.366

clc;
clear;
close;

//Given data
R1_A=33*10^3;
R2_A=10*10^3;
VCC=12;
VBEQ=0.7;
hfe_A=100
Re1_A=1*10^3;
Re2_A=470;;
Rc=2.2*10^3;
R1_B=33*10^3;
R2_B=10*10^3;
Rs_B=600;
Rc_B=2.2*10^3;
Re1_B=1*10^3;
Re2_B=0;
RL1_B=47*10^3;
Vs=10*10^-3;
hfe_B=150;
fs_min=2*10^3;

//...................................(A).....................................//

//Calculation for VBB//
VBB=(R2_A*VCC)/(R1_A+R2_A);

//Calculation for Rb//
Rb=(R1_A*R2_A)/(R1_A+R2_A);

//Calculation for collector current//
//for Re2=0:
ICQ1=hfe_A*((VBB-VBEQ)/(Rb+(hfe_A*(Re1_A))));//IBEQ=(VBB-VBEQ)/(Rb+(hfe*(Re1+Re2)))

//for Re2=470 ohm:
ICQ2=hfe_A*((VBB-VBEQ)/(Rb+(hfe_A*(Re1_A+Re2_A))));

//Calculation for quiescent collector to emitter voltage//
//for Re2=0:
VCEQ1=VCC-ICQ1*(Rc+Re1_A);

//for Re2=470 ohm:
VCEQ2=VCC-ICQ2*(Rc+Re1_A+Re2_A);

//Calculation for re_dash//
//when ICQ=1.94mA:
re_dash1=(26*10^-3)/ICQ1;//IEQ=ICQ
//when ICQ=1.35mA:
re_dash2=(26*10^-3)/ICQ2;//for Re2=470 ohm

//...................................(B)....................................//

//Calculation for resistance of the parallel combination of Rc and Rl1//
Rl1c=(Rc_B*RL1_B)/(Rc_B+RL1_B);
Rl2e=0;

//Calculation for Vth//
Vth=((R1_B*R2_B)/(R1_B+R2_B))/(Rs_B+(R1_B*R2_B)/(R1_B+R2_B))*Vs;

//Calculation for Rth//
Rth=1/((1/Rs_B)+(1/R1_B)+(1/R2_B));

//Calculation for Ib//
Ib=Vth/(Rth+(hfe_B*(re_dash1+Rl2e)));

//Calculation for the output voltage of circuit//
Vo=-Rl1c*hfe_B*Ib;

//Calculation for overall voltage gain of the circuit//
Avs=abs(Vo/Vs);

//Calculation for gain of the transistor//
Av=abs(Rl1c/(re_dash1+Rl2e));

//Calculation for input resistance at the base//
Rin_base=hfe_B*(re_dash1+Rl2e);

//Calculation for total input resistance//
Rin_total=((1/R1_B)+(1/R2_B)+(1/Rin_base))^-1;

//Calculation for overall current gain//
AIs=((hfe_B*(Rs_B+Rin_total))/(Rth+(hfe_B*(re_dash1+Rl2e))))*(((R1_B*R2_B)/(R1_B+R2_B))/(Rs_B+(R1_B*R2_B)/(R1_B+R2_B)));

//Calculation for output resistance //
Rout=2.2*10^3;//Rout=Rout1=Rc

//...................................(C)....................................//

//Calculation for a//
a=260*10^-3/(hfe_A*(VBB-VBEQ));

//Calculation for minimum value of Re2//
Re2_min=(a/(1-(a*hfe_A)))*(Rb+(hfe_A*Re1_A));

//Calculation for re_dash3//
re_dash3=Re2_min/10;

//Calculation for overall voltage gain of the amplifier//
Avs_dash1=abs((hfe_B/(Rth+hfe_B*(Re2_min+re_dash3)))*4.27*10^3*((R1_B*R2_B)/(R1_B+R2_B))/(Rs_B+(R1_B*R2_B)/(R1_B+R2_B)));//Rl2e=Re2=Re2_min

//Calculation for overall voltage gain of the amplifier by neglecting re_dash//
Avs_dash2=abs((hfe_B/(Rth+hfe_B*(Re2_min)))*4.27*10^3*((R1_B*R2_B)/(R1_B+R2_B))/(Rs_B+(R1_B*R2_B)/(R1_B+R2_B)));//Rl2e=Re2=Re2_min

//...................................(D)....................................//

//Calculation for the minimum value Cb_min of the blocking capacitor Cb//
Cb_min=1.59/(fs_min*(Rs_B+Rin_total));

//Calculation for the minimum value Cc_min of the coupling capacitor Cc//
Cc_min=1.59/(fs_min*(Rc+RL1_B));

//Calculation for the minimum value Ce1_min of the bypass capacitor Ce//
Ce1_min=1.59/(fs_min*Re1_A);

//Displaying the result in command window
printf("\n ......................(A)............................");
printf('\n VBB = %0.2f V',VBB);
printf('\n Rb = %0.2f K',Rb*10^-3);
printf('\n For Re2=0, Collector current = %0.2f mA',ICQ1*10^3);
printf('\n For Re2=470 ohm, Collector current = %0.2f mA',ICQ2*10^3);
printf('\n For ICQ=1.94 mA, Quiescent collector to emitter voltage = %0.2f V',VCEQ1);
printf('\n For ICQ=1.35 mA, Quiescent collector to emitter voltage = %0.2f V',VCEQ2);
printf('\n For ICQ=1.94 mA and Re2=0,the value of re_dash= %0.2f K',re_dash1);
printf('\n For ICQ=1.35 mA and Re2=470 ohm,the value of re_dash = %0.2f ohm',re_dash2);
printf("\n \n ......................(B)............................");
printf('\n Resistance of parallel combination of Rc and RL1 = Rl1c = %0.1f K',Rl1c*10^-3);
printf('\n Resistance of parallel combination of Re2 and RL2 = Rl2e = %0.0f ',Rl2e);
printf('\n Vth = %0.2f mV',Vth*10^3);
printf('\n Rth = %0.0f ohm',Rth);
printf('\n ac base current = Ib = %0.2f microA',Ib*10^6);
printf('\n Output voltage of circuit = Vo = %0.2f V',Vo);
printf('\n Overall voltage gain of the circuit = %0.0f ',Avs);
printf('\n Gain of the transistor = %0.0f ',Av);
printf('\n Input resistance at the base = %0.0f K',Rin_base*10^-3);
printf('\n Total input resistance = %0.2f K',Rin_total*10^-3);
printf('\n Overall current gain = %0.0f ',AIs);
printf("\n \n ......................(C)............................");
printf('\n a = %0.4f ',a);
printf('\n Minimum value of Re2 = %0.0f ohm',Re2_min);
printf('\n re_dash = %0.1f ohm',re_dash3);
printf('\n Overall voltage gain of the amplifier = %0.0f ',Avs_dash1);
printf('\n Overall voltage gain of the amplifier by neglecting re_dash = %0.0f ',Avs_dash2);
printf("\n \n ......................(D)............................");
printf('\n The minimum value Cb_min of the blocking capacitor Cb = %0.2f microF',Cb_min*10^6);
printf('\n The minimum value Cc_min of the coupling capacitor Cc = %0.2f nF',Cc_min*10^9);
printf('\n The minimum value Ce1_min of the bypass capacitor Ce = %0.1f microF',Ce1_min*10^6);

//Answers are varying due to round off error//
