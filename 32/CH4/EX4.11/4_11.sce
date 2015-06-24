//pathname=get_absolute_file_path('4.11.sce')
//filename=pathname+filesep()+'4.11-data.sci'
//exec(filename)
//Efficiency of carnot cycle:
n=0.5
//Mass of air(in kg):
m=0.5
//Initial pressure(in Pa):
p2=7*10^5
//Initial volume(in m^3):
v2=0.12
//Heat transferred during the process 2-3(in kJ):
Q23=40
//Specific heat at const pressure(in kJ/kg):
Cp=1.008
//Specific heat at const volume(in kJ/kg):
Cv=0.721
//Gas constant for air:
Ra=287
//Maximum temperature of the cycle(in K):
T2=p2*v2/(m*Ra)
//Minimum temperature(in K):
T1=T2/2
//Volume at state 3(in m^3):
v3=v2*(%e^(Q23/(m*Ra*10^(-3)*T2)))
//Compression factor:
r=Cp/Cv
//Pressure at point 1(in Pa):
p1=p2/((T2/T1)^(r/(r-1)))
//Volume at point 1(in m^3):
v1=m*Ra*T1/p1
//Temperature at state 3(in K):
T3=T2
//Temperature at state 4(in K):
T4=T1
//During process 1-2, work done(in kJ):
W12=-m*Cv*(T2-T1)
//Heat transfer in process 1-2(in kJ):
Q12=0
//Work done in process 2-3(in kJ):
W23=Q23
//During process 3-4, work done(in kJ):
W34=-m*Cv*(T4-T3)
//Heat transfer in process 3-4(in kJ):
Q34=0
//During process 4-1, work done(in kJ):
W41=-W23
//Heat transfer in process 4-1(in kJ):
Q41=-Q23
printf("\nRESULTS\n")
printf("\nProcess    Heat transfer    Work interaction")
printf("\n  1-2            %d            %f",Q12,W12)
printf("\n  2-3            %d            %d",Q23,W23)
printf("\n  3-4            %d            %f",Q34,W34)
printf("\n  4-1           %d            %d",Q41,W41)
printf("\n\n\n Maximum temperature of the cycle = %f kJ",T2)
printf("\n Minimum temperature of the cycle = %f kJ",T1)
printf("\n Volume at the end of the expansion = %f m^3",v3)