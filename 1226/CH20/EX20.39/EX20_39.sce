clc;funcprot(0);//EXAMPLE 20.39
// Initialisation of Variables
N=10000;.................//Compressor rpm
v=660;............//Volume of air delivered in m^3/min
p1=1;.................//Inlet pressure in bar
t1=293;.............//Inlet temperature in K
rp=4;.............//Pressure ratio
etaisen=0.82;........//Isentropic efficiency
Cf2=62;...............//Flow velocity in m/s
rr=2;.............//Ratio of outer radius of impeller to inner radius of impeller
ka=0.9;..............//Blade area co efficient
fis=0.9;...........//Slip factor
cp=1.005;..............//Specific heat at constant pressure in kJ/kgK
ga=1.4;............//Ratio of specific heats
R=287;..............//Gas constant for air in kJ/kgK
//Calculations
t21=t1*(rp^((ga-1)/ga));Cf1=Cf2;
t2=t1+((t21-t1)/etaisen);..........//Final temperature of air
m=(p1*10^5*v/60)/(R*t1);...............//Mass flow rate in m^3/s
P=m*cp*(t2-t1);.........//Theoretical power in kW
disp(t2,"Final temperature of air in Kevin:")
disp(P,"Theoretical power in kW:")
Cbl2=sqrt(1000*cp*(t2-t1)/fis);
d2=60*Cbl2/(%pi*N);..........//Impeller diameter at outlet in m
d1=d2/rr;...............//Impeller diameter at inlet in m
disp(d2*100,"Impeller diameter at outlet in cm")
disp(d1*100,"Impeller diameter at inlet in cm")
b1=(v/60)/(2*%pi*(d1/2)*Cf1*ka);.........//Breadth of impeller at inlet in m
disp(b1*100,"Breadth of impeller at inlet in cm:")
Cbl1=Cbl2/rr;
beta1=(atan(Cf1/Cbl1))*180/%pi;
al2=(atan(Cf2/(fis*Cbl2)))*180/%pi;
disp(beta1,"Impeller blade angle at inlet in degrees:")
disp(al2,"Diffuser blade angle at inlet in degrees")


