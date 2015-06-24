clc
clear

//Input data
Mi=0.8 //Inlet mach number 
h=10 //Altitude in km
To3=1200 //Stagnation temperature before turbine inlet in K
dTc=175 //Stagnation temperature rise through the compressor in K
CV=43000 //Calorific value in kJ/kg
eff_c=0.75 //Compressor efficiency
eff_cc=0.75 //Combustion efficiency
eff_t=0.81 //Turbine efficiency
eff_m=0.98 //Mechanical transmission efficiency
eff_n=0.97 //Nozzle efficiency 
Is=25 //Specific impulse in sec
k=1.4 //Adiabatic constant of air
R=287 //Specific gas constant in J/kg-K
Cp=1005 //Specific heat capacity at constant pressure of air in J/kg-K
g=9.81 //Acceleration due to gravity in m/s^2

//Calculation
Ti=223.15 //Inlet temperature in K from gas tables
ai=sqrt(k*R*Ti) //Sound velocity in m/s
Toi=(1+((0.5*(k-1)*Mi^2)))*Ti //Stagnation temperature at diffuser inlet in K
To1=Toi //Inlet Stagnation temperature of compressor in K, since hoi=ho1 
To2=dTc+To1 //Exit Stagnation temperature of compressor in K
pr_c=(1+(eff_c*((To2-To1)/To1)))^(k/(k-1)) //Compressor pressure ratio 
f=((Cp*To3)-(Cp*To2))/((eff_cc*CV*10^3)-(Cp*To3)) //Fuel-air ratio, calculation mistake in textbook
dTt=dTc/(eff_m*(1+f)) //Temperature difference across turbine
pr_t=1/((1-(dTt/(To3*eff_t)))^(k/(k-1))) //Turbine pressure ratio
To4=To3-dTc //Exit Stagnation temperature of turbine in K
u=ai*Mi //Flight velocity in m/s
sig=1/(((Is*g)/u)+1) //Jet speed ratio 
Ce=u/sig //Exit velocity in m/s
Cj=Ce //Jet velocity in m/s, Since Cj is due to exit velociy
Te=To4-(Ce^2/(2*Cp)) //Exit temperature in K
Tes=To4-((To4-Te)*eff_n) //Exit temperature in K, (At isentropic process)
pr_n=(To4/Te)^(k/(k-1)) //Nozzle pressure ratio
ae=sqrt(k*R*Te) //Exit Sound velocity in m/s
Me=Ce/ae //Exit mach number 

printf('(A)Fuel-air ratio is %3.5f \n (B)Compressor, turbine, nozzle pressure ratio are %3.3f, %3.3f, %3.2f respectively\n (C)Mach number at exhaust jet is %3.3f',f,pr_c,pr_t,pr_n,Me)
