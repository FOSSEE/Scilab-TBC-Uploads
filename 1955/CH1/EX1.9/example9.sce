clc
clear
// input data
P=1.3//Pressure ratio of stages
N=8//Number of stages
m =45//The flow rate through compressor in kg/s
nc=0.8//Overall efficiency of the compressor
P1=1//Initial pressure of the air at entry in bar
T1=308//Initial temperature of the air at entry in K
r=1.4//ratio of specific heats for air

//calculations
PN=(P)^8//Overall pressure ratio of all 8 stages
TN=PN^((r-1)/r)//Overall temperature ratio of all 8 stages
TN1s=TN*T1//Ideal exit temperature in K
TN1=((TN1s-T1)/nc)+T1//Actual exit temperature in K
PN1=PN*P1//Actual exit pressure in bar
np=((r-1)/r)*((log10(PN1/P1))/(log10(TN1/T1)))//Polytropic efficiency of the cycle
ns=((((P)^((r-1)/r))-1)/(((P)^((r-1)/(r*np)))-1))//The stage efficiency of the cycle

//output
printf('(a)The state of air at compressor exit are\n    (1)actual temperature is %3.1f K\n    (2)actual pressure is %3.2f bar\n(b)The polytropic efficiency of the cycle is %3.2f\n(c)The stage efficiency of the cycle is %3.4f',TN1,PN1,np,ns)
