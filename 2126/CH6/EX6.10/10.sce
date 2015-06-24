clc
clear

//Input data
h=3000 //Altitude in m
Pi=0.701 //Inlet pressure in bar
Ti=268.65 //Inlet temperature in K
u=525*(5/18) //Flight velocity in m/s
eff_d=0.875 //Diffuser efficiency
eff_c=0.79 //Compressor efficiency
C1=90 //Velocity of air at compressor in m/s
dTc=230 //Temperature rise through compressor
k=1.4 //Adiabatic constant of air
Cp=1005 //Specific heat capacity at constant pressure of air in J/kg-K
R=287 //Specific gas constant in J/kg-K

//Calculation
ai=sqrt(k*R*Ti) //Sound velocity in m/s
Mi=u/ai //Inlet mach number 
Toi=(1+((0.5*(k-1)*Mi^2)))*Ti //Stagnation temperature at diffuser inlet in K
To1=Toi //Inlet Stagnation temperature of compressor in K, since hoi=ho1 
T1=To1-(C1^2/(2*Cp)) //Temperature at inlet of compressor in K
P1=Pi*((1+(eff_d*((T1/Ti)-1)))^(k/(k-1))) //Inlet pressure of compressor in bar
dPc=P1-Pi //Pressure rise through inlet diffuser in bar
pr_c=(((eff_c*dTc)/To1)+1)^(k/(k-1)) //Pressure ratio of compressor
P=Cp*(dTc) //Power required by the compressor in kW/(kg/s)
eff=1-(1/pr_c^((k-1)/k)) //Air standard efficiency

//Output
printf('(A)Pressure rise through diffuser is %3.4f bar\n (B)Pressure developed by compressure is %3.4f bar\n (C)Air standard efficiency of the engine is %3.4f',dPc,P1,eff)
