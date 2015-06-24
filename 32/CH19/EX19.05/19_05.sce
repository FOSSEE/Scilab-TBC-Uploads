//pathname=get_absolute_file_path('19.05.sce')
//filename=pathname+filesep()+'19.05-data.sci'
//exec(filename)
//Pressures(in bar):
p1=2.2
//Temperatures(in K):
T1=220
T4=1273
//Velocities(in m/s):
C1=260
//Nozzle efficiency:
nn=0.85
//Turbine efficiency:
nt=0.88
//Diffuser efficiency:
nd=0.90
//Specific heat(in kJ/kg.K):
Cp=1.005
//Adiabatic index of  compression:
r=1.4
//Pressure ratio:
r1=12
//Temperature at state 2(in K):
T2=T1+C1^2/(2*Cp*10^3)
//Pressure at state 2(in bar):
p2=p1*(T2/T1)^(r/(r-1))
p3=p2*r1
p4=p3
//Temperature at state 3(in K):
T3=T2*(p3/p2)^((r-1)/r)
//Temperature at state 3'(in K):
T3a=T2+(T3-T2)/nn
//Temperature at state 5'(in K):
T5a=T4-(T3a-T2)
//Temperature of state 5(in K):
T5=T4-(T4-T5a)/nt
//Pressure at state 5(in bar):
p5=p4*(T5/T4)^(r/(r-1))
//Temperature at state 2(in K):
T2=C1+(200)^2/(2*Cp*10^3)
//Temperature at state 2'(in K):
T2a=T1+(T2-T1)/nd
T3a=568.635
T4=1000
p6=2.2
T6=542.83
//Velocity at exit of nozzle(in m/s):
C6=sqrt(2*(T5-T6)*Cp*10^3)
printf("\n RESULT \n")
printf("\nVelocity of exit of nozzle = %f m/s",C6)