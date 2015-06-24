//pathname=get_absolute_file_path('13.04.sce')
//filename=pathname+filesep()+'13.04-data.sci'
//exec(filename)
//Pressure of steam entering(in bar):
p1=16
//Pressure at exit(in bar):
p3=5
//Mass flow rate(in kg/s):
m1=1
m2=m1
m3=m1
//From steam tables:
//For case 1:
h1=3034.8 //kJ/kg
s1=6.8844 //kJ/kg.K
v1=0.15862 //m^3/kg
n=1.3
h2=2891.39 //kJ/kg
h3=2777 //kJ/kg
v2=0.2559 //m^3/kg
v3=0.3882 //m^3/kg
//For case 2:
h2a=2905.73 //kJ/kg
v2a=0.2598 //m^3/kg
v3a=0.40023 //m^3/kg
//Pressure at the throat of nozzle(in bar):
p2=p1*(2/(n+1))^(n/(n-1))
//Heat drop up to throat section(in kJ/kg):
q12=h1-h2
//Velocity at throat(in m/s):
C2=sqrt(2*(h1-h2)*10^3)
//Heat drop from exit(in kJ/kg):
q23=h2-h3
//Velocity at exit(in m/s):
C3=sqrt(2*(h2-h3)*10^3+C2^2)
//Throat area(in m^2):
A2=m2*v2/C2
//Exit area(in m^2):
A3=m3*v3/C3
printf("\nRESULT\n")
printf("\nFor frictionless expansion")
printf("\nThroat area = %f cm^2",A2*(10^4))
printf("\nExit area = %f cm^2",A3*(10^4))
//Considering expansion to have 10% friction loss:
q12a=0.9*q12
//Actual velocity at throat(in m/s):
C2a=sqrt(2*q12a*10^3)
//Actual throat area(in m^2):
A2a=m2*v2a/C2a
//Actual drop at the exit of the nozzle(in kJ/kg):
q23a=0.9*q23
//Actual enthalpy at state 3(in kJ/kg):
h3a=h2a-q23a
//Actual velocity at exit(in m/s):
C3a=sqrt(2*q23a*10^3+C2a^2)
//Actual area at exit(in m^2):
A3a=m3*v3a/C3a
printf("\n\nConsidering friction")
printf("\nThroat area = %f cm^2",A2a*(10^4))
printf("\nExit area = %f cm^2",A3a*(10^4))