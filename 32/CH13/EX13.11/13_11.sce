//pathname=get_absolute_file_path('13.11.sce')
//filename=pathname+filesep()+'13.11-data.sci'
//exec(filename)
//Initial pressure(in bar):
p1=4
//Initial temperature(in K):
T1=180+273
//Final pressure(in bar):
p2=1.5
//Index of compression:
n=1.3
//Efficiency due to heat loss:
nn=0.95
//Specific heat(in kJ/kg.K):
C=2.174
//From steam tables:
v1=0.5088 //m^3/kg
Tsat=111.37+273 //K (at p=1.5 bar)
//Enthalpy at state 1(in kJ/kg):
h1=p1*v1*10^2+2614
//Specific volume at state 2(in m^3/kg):
v2=v1*(p1/p2)^(1/n)
//Enthalpy at state 2(in kJ/kg):
h2=p2*v2*10^2+2614
//Actual heat drop(in kJ/kg):
dh=nn*(h1-h2)
printf("\nRESULT\n")
printf("\nActual heat drop = %f kJ/kg",dh)
//Temperature at state 2(in K):
T2=T1*(p2/p1)^((n-1)/n)
//Temperature rise due to supersaturation:
dT=(1-nn)*(h1-h2)/C
//Actual temperature at state 2(in K):
T2a=T2+dT
//Amount of undercooling(in C):
u=Tsat-T2a
printf("\nAmount of undercooling = %f C",u)