//pathname=get_absolute_file_path('13.12.sce')
//filename=pathname+filesep()+'13.12-data.sci'
//exec(filename)
//Initial pressure(in bar):
p1=14
//Initial temperature(in K):
T1=400+273
//Number of nozzles:
N=16
//Final pressure(in bar):
p2=10
//Discharge(in kg/s):
m=5
//Nozzle efficiency:
nn=0.90
//Inlet velocity(in m/s):
C1=100
//Insex of compression:
n=1.3
//From steam tables:
h1=3257.5 //kJ/kg
s1=7.3026 //kJ/kg.K
T2=350.46 //C
h2=3158.7 //kJ/kg
v2=0.2827 //m^3/kg
//Actual enthalpy change(inn kJ/kg):
h12=(h1-h2)*nn
//Velocity at exit(in m/s):
C2=sqrt(2*h12*10^3)
//Cross-sectional area at exit(in cm^2):
A2=m*v2/(C2*N)*10^4
//Modified velocity at nozzle exit(in m/s):
C2a=sqrt(2*h12*10^3+C1^2)
//Discharge with modified velocity(in kg/s):
//ma=A2*C2a*N/v2*10^(-4)
ma=16*2.13*433.41*10^(-4)/0.2827
//% increase in discharge:
p=(ma-m)/m*100
printf("\nRESULT\n")
printf("\nCross-sectional area at exit of nozzle = %f cm^2",A2)
printf("\nPercentage increase in discharge = %f percent",p)