clc
clear
//input data
ntt=0.9//Total-to-total efficiency
P00=300//The pressure at entry to the nozzle in kPa
T00=1150//The temperature at entry to the nozzle in K
T1=1013//The static temperature at the outlet of the nozzle in K
P03=100//The pressure at the outlet of the diffuser in kPa
R=284.5//The universal gas constant in J/kg.K
Cp=1.147//The specific heat of air at constant pressure in kJ/kg.K
r=1.33//The ratio of specific heats of given gas

//calculations
U1=(ntt*Cp*1000*T00*(1-((P03/P00)^((r-1)/r))))^(1/2)//The impeller tip speed in m/s
T01=T00//The absolute temperature at the entry in K
C1=(2000*Cp*(T01-T1))^(1/2)//The absolute velocity at the inletof turbine in m/s
a11=acosd(U1/C1)//The flow angle at the nozzle oulet in degree
M1=C1/(r*R*T1)^(1/2)//The mach number at the nozzle outlet 

//output
printf('(a)The impeller tip speed is %3.1f m/s\n(b)The flow angle at the nozzle oulet is %3.2f degrees\n(c)The mach number at the nozzle outlet is %3.2f',U1,a11,M1)
