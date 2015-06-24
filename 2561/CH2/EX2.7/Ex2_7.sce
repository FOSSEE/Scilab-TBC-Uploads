//Ex2_7
clc
VI=10
disp("input voltage,VI = "+string(VI)+" volts") //initialization
Vz=5
disp("diode voltage,Vz = "+string(Vz)+" volts") //initialization
Rz=100
disp("resistance,Rz = "+string(Rz)+ " ohm")  //initialization
RD=500
disp("resistance,RD = "+string(RD)+ " ohm")  //initialization
DVI=25
disp("percentage change in VI,DVI= "+string(DVI)+" volts") //initialization
DVL=(DVI)*(Rz/(RD+Rz))  //Formulae
disp("percentage change in VL,DVL=(DVI)*(Rz/(RD+Rz))= "+string(DVL)+" %")
R0=(RD*Rz)/(RD+Rz) //Formulae
disp("Output resistance,R0 =(RD*Rz)/(RD+Rz)= "+string(R0)+ " ohm")
VImax=12.5
Izmax=(VImax-Vz)/(RD+Rz) //Formulae
disp("resistance,RD = "+string(RD)+ " ohm")
PZmax=(Izmax*Vz)  //Formulae
disp("Power dissipated,PZmax =PZmax=(Izmax*Vz)= "+string(PZmax)+ " watt")
Prd=(Izmax*Izmax*RD)  //Formulae
disp("Power dissipated,Prd=Prd=(Izmax*Izmax*RD)= "+string(Prd)+ " watt")
PD=(PZmax+Prd)  //Formulae
disp("Power dissipated,PD = "+string(PD)+ " watt")
RL=0.5*(10^3)
disp("resistance,RL = "+string(RL)+ " ohm") //initialization
%VR=(R0*100)/RL  //Formulae
disp(" voltage Regulation Percentage,%VR =(R0/RL)*(100)= "+string(%VR)+"% ")
