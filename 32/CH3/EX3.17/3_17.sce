//pathname=get_absolute_file_path('3.17.sce')
//filename=pathname+filesep()+'3.17-data.sci'
//exec(filename)
//Initial pressure(in MPa):
pi=0.5
//Initial volume(in m^3):
vi=0.5
//Final pressure(in MPa):
pf=1
//Atmospheric pressure(in Pa):
patm=1.013*10^5
//Adiabatic index of compression for H2:
rH2=CpH2/(CpH2-RH2)
//Adiabatic index of compression for N2:
rN2=CpN2/(CpN2-RN2)
//Final pressure of hydrogen(in Pa):
p2=p1*(v1/v2)^rH2
printf("\nRESULT\n")
printf("\nFinal pressure of hydrogen = %f MPa",p2/(10^6))
//Partition work:
Pw=0
printf("\nPartition work = %d",Pw)
//Work done upon H2(in J):
WH2=(p1*v1-p2*v2)/(rH2-1)
//Work done by nitrogen(in J):
WN2=-WH2
printf("\nWork done by hyrogen = %d J",WH2)
printf("\nWork done by nitrogen = %d J",WN2)
//Mass of N2(in kg):
mN2=p1*v1/(RN2*10^3*T1)
//Final temperature of N2(in K):
T2=p2*vN2*T1/(p1*v1)
//Cv of N2(in kJ/kg):
CvN2=CpN2-RN2
//Heat added to N2(in kJ):
QN2=mN2*CvN2*10^3*(T2-T1)+WN2
printf("\nHeat added to nitrogen = %f kJ",QN2/(10^3))