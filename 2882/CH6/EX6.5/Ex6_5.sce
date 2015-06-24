//Tested on Windows 7 Ultimate 32-bit
//Chapter 6 Single Staje BJT Amplifiers Pg no. 191 and 192
clear;
clc;

//Given Data
//Figure 6.9

VCC=15;//collector supply voltage in volts
RC=1D3;//collector resistance in ohms
RE=390;//emitter resistance in ohms
R1=18D3;//divider network resistance R1 in ohms
R2=3.9D3;//divider network resistance R2 in ohms
VBE=0.7;//forward voltage drop of emitter diode in volts
Bdc=120;//DC CE current gain beta
Bac=130;//AC CE current gain beta
VT=25D-3;//voltage equivalent of temperature in volts
Vs=5D-3;//source rms voltage in volts
Rs=600;//source internal impedance in ohms
re=5;//equivalent BJT model emitter resistance in ohms
RL=6.8D3;//load resistance in ohms
C2=50D-6;//emitter bypass capacitance in farads

//Solution

disp("(i)");
RL_dash=RC*RL/(RC+RL);//a.c. value of collector resistance in ohms
Gv=RL_dash/re;//a.c. voltage gain
printf("A.C. Voltage gain Gv = %.1f\n",Gv);

disp("(ii)");
Rin_dash=Bac*(RE+re);//internal resistance of BJT in ohms
Rin=1/(1/R1+1/R2+1/Rin_dash);//total internal resistance is Rin=R1||R2||Rin'
f=Rin/(Rs+Rin);//input attenuation factor
Gv_dash=f*Gv;//overall a.c. voltage gain
printf("Overall A.C. Voltage gain Gv'' = %.1f\n",Gv_dash);

//gain deviation due to approximations in textbook
