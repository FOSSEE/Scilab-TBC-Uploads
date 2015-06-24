clc
clear
//Input data
Vs=0.0028;//Swept volume in m^3
N=3000;//Speed of the engine in rpm
ip=12.5;//The average indicated power developed in kW/m^3
nv=85;//Volumetric efficiency in percent
p1=1.013;//The atmospheric pressure in bar
T1=288;//The atmospheric temperature in K
ni=74;//Isentropic efficiency in percent
pr=1.6;//The pressure ratio
nm=78;//All mechanical efficiencies in percent
g=1.4;//Adiabatic index
R=287;//Real gas constant in J/kgK
Cp=1.005;//The specific heat of gas in kJ/kgK

//Calculations
Vs1=(Vs*(N/2));//Volume swept by the piston per minute in m^3/min
Vi=(nv/100)*Vs1;//Unsupercharged induced volume in m^3/min
p2=pr*p1;//Blower delivery pressure in bar
T21=T1*(p2/p1)^((g-1)/g);//Temperature after isentropic compression in K
T2=T1+((T21-T1)/((ni/100)));//Blower delivery temperature in K
Ve=(Vs1*p2*T1)/(T2*p1);//Equivalent volume at 1.013 bar and 15 degree centigrade in m^3/min
nv1=[Ve/Vs1]*100;//Volumetric efficiency of supercharged engine in percent
Vii=Ve-Vi;//Increase in induced volume in m^3/min
ipa=ip*Vii;//Increase in ip from air induced in kW
ipi=[(p2-p1)*10^5*Vs1]/(60*1000);//Increase in ip due to increased induction pressure in kW
ipt=ipa+ipi;//Total increase in ip in kW
bp=ipt*(nm/100);//Increase in engine bp in kW
ma=(p2*(Vs1/60)*10^5)/(R*T2);//Mass of air delivered per second by blower in kg/s
P=ma*Cp*(T2-T1);//Power input to blower in kW
Pd=P/(nm/100);//Power required to drive the blower in kW
bpn=bp-Pd;//Net increase in bp in kW
bpu=ip*Vi*(80/100);//The bp of unsupercharged engine in kW
bpp=(bpn/(bpu))*100;//Percentage increase in bp in percent

//Output
printf('The volumetric efficiency of supercharged engine = %3.0f percent \n The increase in brake power by supercharging = %3.2f kW \n The percentage increase in brake power = %3.1f percent ',nv1,bpn,bpp)
