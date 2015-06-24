//pathname=get_absolute_file_path('18.04.sce')
//filename=pathname+filesep()+'18.04-data.sci'
//exec(filename)
//Pressure ratio:
r1=8
//Operating temperatures(in K)
T1=-30+273
T3=27+273
//Isentropic efficiency of compression:
nic=0.85
//Isentropic efficiency of expansion:
nie=0.90
//Specific heat(in kJ/kg):
Cp=1.005
//Adiabatic index of compression:
r=1.4
//Air flow rate(in kg/s):
m=1
//Temperature at state 2'(in K):
T2a=T1*(r1)^((r-1)/r)
//Temperature at state 2(in K):
T2=(T2a-T1)/nic+T1
//Temperature at state 4'(in K):
T4a=T3*(1/r1)^((r-1)/r)
//Temperature at state 2'(in K):
T4=T3-(T3-T4a)*nie
//Work during compression(in kJ/s):
Wc=Cp*(T2-T1)
//Work during expansion(in kJ/s):
Wt=Cp*(T3-T4)
//Refrigeration effect(in kJ/s):
Qref=Cp*(T1-T4)
//Net work required(in kJ/s):
W=Wc-Wt
//COP:
COP=Qref/W
printf("\n RESULT \n")
printf("\nRefrigeration capacity = %f kJ/s",Qref)
printf("\nCOP = %f",COP)