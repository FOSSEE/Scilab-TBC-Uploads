clc;funcprot(0);//EXAMPLE 16.3
// Initialisation of Variables
ec=3600*10^(-6);.............//Engine capacity in m^3
pw=13;...............//Power developed in kW per m^3 of free air induced per minute
etaV=0.82;............//Volumetric Efficiency
N=3000;................//Engine rpm
p1=1.0132;...........................//Initial Air pressure in bar
t1=298;........................//Initial Temperature in Kelvin
pr=1.8;.....................//Pressure ratio in rotary compressor
etaC=0.75;.................//Isentropic efficiency of compressor
etaM=0.8;....................//Mechanical efficiency
ga=1.4;.....................//Degree of freedom for the gas
td=4;.......................//The amount by which the temperature is kess than delivery temperature from compressor
R=287;......................//Gas constant in J/kg.K
cp=1.005;.....................//Specific heat capacity
//Calculations
Vs=(ec*N)/2;....................//Swept volume in m^3/min
Vu=Vs*etaV;....................//Unsupercharged volume induced per min
rcdp=pr*p1;........//Rotary compressor delivery pressure
t2=t1*(pr)^((ga-1)/ga);..............//Ideal temperature for the supercharged engine
t2a=t1+(t2-t1)/etaC;................//Actual temperature for the supercharged engine
ta=t2a-td;............................//Temperature of air at intake to the engine cylinder
V1=(rcdp*Vs*t1)/(p1*ta);.................//Equivalent volume at 1.0132 bar and 298 K
Vinc=V1-Vs;...........................//Increase in induced Volume of air in m^3/min
ipincai=pw*Vinc;.......................//Increase in IP from air induced in kW
ipinciip=((rcdp-p1)*10^5*Vs)/(60*1000);...........//Increase in IP due to increased induction pressure kW
ipinctot=ipincai+ipinciip;...............//Total increase in Input Power in kW
bpinc=ipinctot*etaM;....................//Increase in Brake Power of the engine in kW
ma=(rcdp*10^5*Vs)/(60*R*ta);...................//Mass of air delivered by the compressor kg/s
pc=(ma*cp*(t2a-t1))/etaM;....................//Power required by the compressor
bpincnet=bpinc-pc;..........................//Net Increase in BP
disp(bpincnet,"The Net increase in Brake Power in kW:")

