//chapter-8 page 339 example 8.5
//==============================================================================
clc;
clear;

//For a 2 cavity klystron amplifier
V0=1200;//Beam voltage in V
I0=0.028;//Beam current in A
f=8*10^9;//frequency in Hz
d=0.001;//gap spacing in either cavity in m
L=0.04;//spacing between centers of cavities in m
Rsh=40000;//Effective shunt impedance in ohms
J1=0.582;//value of J1(X)
X=1.841;//bunching parameter

//CALCULATION
w=2*(%pi)*f;//angular frequency in rad
v0=0.593*10^6*sqrt(V0);//velocity of electron in m/sec
Vomax=((3.68*V0*v0)/(w*L));//max output power in V
tg=(w*d)/v0;//avg gap transit angle in rad
Tg=tg*(180/(%pi));
Bi=(sind(Tg/2))/(tg/2);//beam coupling coefficient 
Bo=Bi;//output cavity coupling coefficient 
Vimax=Vomax/Bi;//The input microwave voltage in order to generate maximum output voltage in V
t0=w*L/v0;//transit angle in rad
R0=V0/I0;//impedance in ohms
Av=((Bo^2*J1*t0*Rsh)/(R0*X));//Voltage gain 
I2=2*I0*J1;
V2=Bo*I2*Rsh;
disp('neglecting beam loading');
Eff=0.58*(V2/V0)*100;//Efficiency in %
G0=1/R0;
GB=(G0/2)*(Bo*(Bo-cos(Tg/2)));//Beam loading conductance in mhos
RB=(1/GB)/1000;//Beam loading resistance in Kohms
disp('Beam loading resistance in Kohms is');
disp(RB);
disp('The value 73 kohms is very much comparable to Rsh and cannot be neglected because Tg is quite high');

//OUTPUT
mprintf('\nThe input microwave voltage in order to generate maximum output voltage is Vimax=%2.2f V \nThe voltage gain is Av=%2.2f percentage \nBeam loading conductance is GB=%1.10f mhos',Vimax,Av,GB);

//=========================END OF PROGRAM===============================




