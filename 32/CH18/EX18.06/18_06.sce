//pathname=get_absolute_file_path('18.06.sce')
//filename=pathname+filesep()+'18.06-data.sci'
//exec(filename)
//Pressure(in bar):
p1=1
p2=5.5
//Operating temperatures(in K):
T1=-10+273
T3=27+273
//Air flow rate(in kg/s):
m=0.8
//Specific heat(in kJ/kg):
Cp=1.005
//Adiabatic index of compression:
r=1.4
//Gas constant(in kJ/kg.K):
R=0.287
//Temperature at state 2(in K):
T2=T1*(p2/p1)^((r-1)/r)
//Temperature at state 4(in K):
T4=T3/((p2/p1)^((r-1)/r))
//Refrigeration capacity(in kJ/s):
C=m*Cp*(T1-T4)
printf("\n RESULT \n")
printf("\nRefrigeration capacity = %f kJ/s",C)
//Work required to run the comoressor(in kJ/s):
Wc=m*r/(r-1)*R*(T2-T1)
printf("\nHP required to run compressor = %f hp",Wc/0.7457)
//Net work input(in kJ/s):
W=m*Cp*((T2-T3)-(T1-T4))
//COP:
COP=C/W
printf("\nCOP = %f",COP)