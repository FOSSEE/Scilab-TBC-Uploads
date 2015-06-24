clc;funcprot(0);//EXAMPLE 20.5
// Initialisation of Variables
ma=6.75;.........//Mass of air compressed in kg/min
p1=1;............//Initial pressure in atm
cp=1.003;.........//Specifc heat at constant vpressure in kJ/kgK
t1=21;...........//Initial temperature in Celsius
t2=43;..........//Final temperature in Celsius
rp=1.35;.........//Pressure ratio
ga=1.4;.........//Ratio os specific heats
delt=3.3;.......//Change in temperature 
cpw=4.18;.......//Specific heat for water in kJ/kgK
//Calculations
W=ma*cp*(t2-t1);............//Work output in kJ
disp(W,"Work output in kW:")
t21=(t1+273)*(rp^((ga-1)/ga));...........//Final temperature if the compression had been isentropic
Qr=ma*cp*(t21-(t2+273));............//Heat rejected in kJ
mw=Qr/(cpw*delt);........//Mass of cooling water in kg/min
disp(mw,"Mass of cooling water in kg/min:")
