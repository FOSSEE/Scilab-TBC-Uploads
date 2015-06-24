clc;funcprot(0);//EXAMPLE 21.22
// Initialisation of Variables
Ca=216;................//Speed of aircraft in m/s
t1=265.8;...............//Intake air temperature in K
p1=0.78;...............//Intake air pressure in bar
rp=5.8;..................//Pressure ratio in compressor 
t4=1383;.................//Temperature of gases entering the gas turbine in K
pd=0.168;...............//Pressure drop in combustion chamber in bar
etad=0.9;..............//Diffuser efficiency
etan=0.9;............//Nozzle efficiency
etac=0.9;............//Compressor efficiency
etat=0.8;.............//Turbine efficiency
C=44150;............//Calorific value of fuel in kJ/kg
cp=1.005;.............//Specific heat at constant pressure in kJ/kgK
ga=1.4;...............//Ratio of specific heats
cin=0.12;...............//Inlet cross sectio of the diffuser in m^3
R=0.287;............//Gas constant in kJ/kgK
//Calculations
t2=t1+((Ca*Ca)/(2*cp*1000));......//For ideal diffuser
t21=t1+((Ca*Ca)/(2*cp*etad*1000));......//For actual diffuser
p2=p1*((t2/t1)^(ga/(ga-1)));
t3=t21*(rp^((ga-1)/ga));t31=t21+((t3-t21)/etac);
afr=(C-(cp*t4))/(cp*(t4-t31));............//Air fuel ratio
disp(afr,"Air fuel ratio:")
p3=p2*rp;p4=p3-pd;...............//Pressure of gases entering the turbine in bar
t51=t4-(t31-t21);t5=round(t4-((t4-t51)/etat));
p5=p4/((t4/t5)^(ga/(ga-1)));p6=p1;
t6=t51/((p5/p6)^((ga-1)/ga));t61=t51-(etac*(t51-t6));
Cj=44.72*sqrt(cp*(t51-t61));........//Velocity at the exit of the nozzle in m/s
st=(1+(1/afr))*Cj;............//Specific thrust in N/kg
disp(st,"Specific thrust in N/kg:")
v1=Ca*cin;...........//Volume of flowing air in m^3/s
ma=(p1*v1*10^5)/(R*t1*1000);.........//Mass flow of air
tt=ma*st;..............//Total thrust in N
disp(tt,"Total thrust in N:")
