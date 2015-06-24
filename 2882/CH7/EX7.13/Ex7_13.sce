clear;
clc;

disp("AS ON PAGE NUMBER 242");
//Tested on Windows 7 Ultimate 32-bit
//Chapter 7 Field Effect Transistors Pg no. 242,243 and 244

//Given Data
//Figure 7.37

VGS_Q=-2.5;//quiscent gate to source voltage in volts
IDQ=5D-3;//quiscent drain current in amperes
VDD=12;//drain supply voltage in volts
IDSS=12D-3;//drain saturation current in amperes
VP=-5;//pinch off voltage in volts
YOS=20D-6;//AC drain admittance of JFET in Siemens
RS=1.5D3;//sourcce resistance in ohms
RG=1.5D6;//gate resistance in ohms
C1=0.1D-6;//gate coupling capacitance in farads
C2=0.1D-6;//drain coupling capacitance in farads

//Solution

disp("(i)");
gm0=2*IDSS/abs(VP);//transconductance for VGS=0 Volts in Siemens
gm=gm0*(1-VGS_Q/VP);//transconductance in Siemens
printf("gm = %.1f mS\n",gm*10^3);

disp("(ii)");
rd=1/YOS;//AC drain resistance in ohms
printf("rd = %d kilo ohms\n",rd/10^3);

disp("(iii)");
Zin=RG;//input impedance in ohms
printf("Zin = %.1f Mega-ohms\n",Zin/10^6);

disp("(iv)");
Zout=1/(1/rd+1/RS+gm);//output impedance with rd connected in ohms
printf("Zout with rd = %d ohms\n",Zout);
Zout_dash=1/(1/RS+gm);//output impedance with rd disconnected in ohms
printf("Zout without rd = %.2f ohms\n",Zout_dash);

disp("(v)");
GV=gm*rd*RS/(rd+RS+gm*rd*RS);//voltage gain with rd connected
printf("GV with rd = %.2f\n",GV);
GV_dash=gm*RS/(1+gm*RS);//voltage gain with rd disconnected
printf("GV without rd = %.3f\n",GV_dash);

//decimal approximations in textbook

disp("AS ON PAGE NUMBER 245");

//Tested on Windows 7 Ultimate 32-bit
//Chapter 7 Field Effect Transistors Pg no. 245 and 246

//Given Data
//Figure E7.13

VDD=12;//drain supply voltage in volts
gm=4000D-6;//transconductance in Siemens
YOS=20D-6;//AC drain admittance of JFET in Siemens
RS=2.2D3;//sourcce resistance in ohms
RD=5D3;//drain resistance in ohms
RL=5D3;//load resistance in ohms

//Solution

RL_dash=RD*RL/(RD+RL);//equivalent load resistance in ohms
GV=gm*RL_dash;//voltage gain
Rin_source=1/gm;//input resistance at source terminal in ohms
Rin_net=Rin_source*RS/(Rin_source+RS);//net input resistance in ohms
Rout=1/(1/rd+1/RD+1/RL);//output resistance in ohms
printf("Voltage gain GV = %d\n",GV);
printf("Input resistance Rin = %.1f ohms\n",Rin_net);
printf("Output resistance Rout = %.2f kilo-ohms\n",Rout/10^3);
