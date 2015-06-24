clc
clear

//Input data
P1=0.56 //Inlet pressure of compressor in bar
T1=260 //Temperature at inlet of compressor in K
pr_c=6 //Pressure ratio of compressor
eff_c=0.85 //Compressor efficiency
u=360*(5/18) //Flight velocity in m/s
D=3 //Propeller diameter in m 
eff_p=0.8 //Efficiency of propeller 
eff_g=0.95 //Gear reduction efficiency 
pr_t=5 //Expansion ratio
eff_t=0.88 //Turbine efficiency
T3=1100 //temperature at turbine inlet in K
eff_n=0.9 //Nozzle efficiency 
Cp=1005 //Specific heat capacity at constant pressure of air in J/kg-K
CV=40000 //Calorific value in kJ/kg
k=1.4 //Adiabatic constant of air
R=287 //Specific gas constant in J/kg-K

//Calculation
P2=pr_c*P1 //Exit pressure of compressor in bar
T2s=T1*(pr_c)^((k-1)/k) //Exit temperature of compressor at isentropic proces in K
T2=T1+((T2s-T1)/eff_c) //Exit temperature of compressor in K
Wc=Cp*(T2-T1)*10^-3 //Power input to compressor in kJ/kg of air
C1=u //Air velocity in m/s, since C1 is resultant of u
C=C1/eff_p //Average velocity in m/s
C2=(2*C)-C1 //Exit velocity from compressor in m/s
Ap=0.25*%pi*D^2 //Area of propeller passage in m^2
Q=Ap*C //Quantity of air inducted in m^3/s
mf=((T3-T2)*Cp)/((CV*10^3)-(Cp*T3)) //Mass flow rate of fuel in kg/s
f=mf //Fuel consumption in kg/kg of air
AFR=1/mf //Air fuel ratio
P3=P2 //Exit pressure of combustion chamber in bar, Since process is at constant pressure 
P4=P3/pr_t //Exit pressure of turbine in bar
T4s=T3/((pr_t)^((k-1)/k)) //Exit temperature of turbine at isentropic proces in K, wrong calculation
T4=T3-(eff_t*(T3-T4s)) //Exit temperature of turbine in K
Po=(1+f)*Cp*(T3-T4)*10^-3 //Power output per kg of air in kJ/kg of air
Pa=Po-Wc //Power available for propeller in kJ/kg of air
Pe=P1 //Exit pressure in bar, Since exit is at ambient conditions
Tes=T4/((P4/Pe)^((k-1)/k)) //Exit temperature of nozzle at isentropic proces in K
Cj=sqrt(2*Cp*eff_n*(T4-Tes)) //Jet velocity in m/s
Fs=((1+f)*Cj)-u //Specific thrust in Ns/kg, F in N
Pp=((0.5*P1*10^5*Q*(C2^2-C1^2))/(R*T1))*10^-3 //Propulsive power by propeller in kJ/s
Ps=Pp/eff_g //Power supplied by the turbine in kW
ma=Ps/Pa //Air flow rate in kg/s
Fj=ma*Cj*10^-3 //Jet thrust in kN, calculation mistake
Fp=(Pp*eff_p)/u //Thrust produced by propeller in kN

//Output
printf('(A)Air fuel ratio is %3.2f\n (B)Thrust produced by the nozzle is %3.3f kN\n (C)Thrust by the propeller is %3.3f kN\n (D)mass flow rate through the compressor is %3.2f kg/s',AFR,Fj,Fp,ma)
