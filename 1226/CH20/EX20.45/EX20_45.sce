clc;funcprot(0);//EXAMPLE 20.45
// Initialisation of Variables
etaisen=0.82;.......//Overall isentropic efficiency 
N=8;............//No of stages
t1=293;...........//Inlet temperature in K
ga=1.4;............//Ratio of specific heats
rp=4;.............//Pressure ratio
Rd=0.5;................//Reaction factor
Cbl=180;.................//Mean blade speed in m/s
Cf=90;...............//Air flow velocity in m/s
cp=1.005;.........//Specific heat at constant pressure in kJ/kgK
//Calculations
t21=t1*(rp^((ga-1)/ga));
t2=((t21-t1)/etaisen)+t1;
wrt=cp*(t2-t1);.........//Work done by the machine in kJ/kg
disp(wrt,"Work done by the machine in kJ/kg")
be1=atan(((cp*(t2-t1)*1000/(Cf*Cbl*N))+(Cbl/Cf))/2)*180/%pi;
al1=atan((Cbl/Cf)-tan(be1*%pi/180))*180/%pi;
printf("\nBlade angels are as follows (In degrees)\n\nalpha1=%f\tbeta1=%f\n\nalpha2=%f\tbeta2=%f\n\n",al1,be1,be1,al1)

