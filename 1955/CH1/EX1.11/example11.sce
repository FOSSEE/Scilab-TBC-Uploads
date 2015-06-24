clc
clear
//input data
N=4//Number of stages in compressor
m=45//mass flow rate of air delivered by compressor in kg/s
P1=1.2//Pressure ratio at first stage
ns=0.65//Stage efficiency of first stage
r=1.4//ratio of specific heats for air
Cp=1.005//specific at heat at constant pressure in kJ/kg.K
T1=293//Temperature of air at inlet in K

//calculations
P=(P1)^N//Overall pressure in all 4 stages
np=((r-1)/r)*((log10(P1))/(log10((((P1^((r-1)/r))-1)/ns)+1)))//Polytropic efficiency of the cycle
nc=(((P1^(N*((r-1)/r)))-1)/((P1^(N*((r-1)/(r*np))))-1))//Overall efficiency of the cycle
TN1=T1*((P1^(N))^((r-1)/(r*np)))//Final temperature at the exit of the compressor at final stage in K
W=m*Cp*(TN1-T1)//Power required to drive the compressor in kW

//output

printf('(a)The overall pressure ratio of the process is %3.1f\n(b)The overall efficiency of the process is %3.4f\n(c)The power required to drive the compressor is %3.2f kW',P,nc,W)
