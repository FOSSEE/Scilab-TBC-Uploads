clc;funcprot(0);//EXAMPLE 20.47
// Initialisation of Variables
rp=5;..........//Stagnation pressure ratio ga
etaisen=0.92;.......//Overall isentropic efficiency
t1=290;.............//Inlet stagnation temperature in K
p1=1;...............//Inlet stagnation pressure in bar
Cbl=160;...........//Mean blade speed in m/s
ga=1.4;...........//Ratio of specific heats
Rd=0.5;............//Degree of reaction
Cf=90;................//Axial velocity of air through compressor in m/s
N=8;.............//No of stages
m=1;.........//Mass flow in kg/s
cp=1.005;............//Specific heat at constant pressure in kJ/kgK
//Calculations
tN1=t1*(rp^((ga-1)/ga));......//Temperature at the end of compression stage due to isentropic expansion in K
tN=((tN1-t1)/etaisen)+t1;
be1=atan(((cp*(tN-t1)*1000/(Cf*Cbl*N))+(Cbl/Cf))/2)*180/%pi;
al1=atan((Cbl/Cf)-tan(be1*%pi/180))*180/%pi;
printf("\nBlade angels are as follows (In degrees)\n\nalpha1=%f\t\tbeta1=%f\n\nalpha2=%f\tbeta2=%f\n\n",al1,be1,be1,al1)
P=m*cp*(tN-t1);..........//Power required by the compressor in kW
disp(P,"Power required by the compressor in kW:")




