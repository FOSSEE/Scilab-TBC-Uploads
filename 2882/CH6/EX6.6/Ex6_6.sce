//Tested on Windows 7 Ultimate 32-bit
//Chapter 6 Single Staje BJT Amplifiers Pg no. 193,194 and 195
clear;
clc;

//Given Data
//Figure 6.18,6.19,6.20

VCC=15;//collector supply voltage in volts
RC=5.6D3;//collector resistance in ohms
RE0=390;//unbypassed emitter resistance in ohms
RE1=390;//bypased emitter resistance in ohms
R1=33D3;//divider network resistance R1 in ohms
R2=4.7D3;//divider network resistance R2 in ohms
VBE=0.7;//forward voltage drop of emitter diode in volts
Bdc=140;//DC CE current gain beta
Bac=160;//AC CE current gain beta
VT=25D-3;//voltage equivalent of temperature in volts
Vs=15D-3;//source rms voltage in volts
Rs=600;//source internal impedance in ohms
RL=68D3;//load resistance in ohms
C1=10D-6;//input coupling capacitance in farads
C2=50D-6;//emitter bypass capacitance in farads
C3=10D-6;//output coupling capacitance in farads


//Solution

//DC analysis
Rin_dc=Bdc*(RE0+RE1);//dc input resistance in ohms
if 0.1*Rin_dc>R2 then
    VB=VCC*R2/(R1+R2);//base to ground voltage in volts , since Rin>10*R2 it can be neglected
end
VE=VB-VBE;//emitter to ground voltage in volts
IE=VE/(RE0+RE1);//emitter current in amperes
IC=IE;//collector current is approximately equal to emitter current
VC=VCC-IC*RC;//collector to ground voltage in volts

//AC analysis
re=VT/IE;//equivalent BJT model emitter resistance in ohms
Rin_dash=Bac*(RE0+re);//internal resistance of BJT in ohms
Rin=1/(1/R1+1/R2+1/Rin_dash);//total internal resistance is Rin=R1||R2||Rin'
f=Rin/(Rs+Rin);//input attenuation factor
RL_dash=1/(1/RC+1/RL);//effective load resistance
Gv=RL_dash/(re+RE0);//a.c. voltage gain
Gv_dash=f*Gv;//overall a.c. voltage gain
vc=Gv_dash*Vs;//a.c voltage at collector in volts
printf("Output voltage will be a.c. signal of amplitude %d mV \nCollector voltage will be the same voltage mounted on a d.c. level of %.1f Volts",vc*1000,VC);
//plotting the curves
t=0:0.01:2*3.14;//one period
y1=VC+vc*sin(t);//total collector voltage
y2=vc*1000*sin(t);//output voltage

subplot(2,1,1);
plot(y1);
title("(a)Collector Voltage");
ylabel("Vc (volts)");
xlabel("time period");

subplot(2,1,2);
plot(y2);
title("(b)Output Voltage");
ylabel("Vc (milli-volts)");
xlabel("time period");
