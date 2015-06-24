//pathname=get_absolute_file_path('4.04.sce')
//filename=pathname+filesep()+'4.04-data.sci'
//exec(filename)
//Source temperature(in K):
T1=827+273
//Sink temperature(in K):
T2=27+273
//Temperature in the refrigerator(in K):
T3=-13+273
//Heat input(in kJ):
Q1=2000
//Net work available(in kJ):
W=300
//Rate at which heat is extracted(in kJ):
Q2=Q1*T2/T1
//Work in the engine(in kJ):
We=Q1-Q2
//Work in the refrigerator(in kJ):
Wr=We-W
//Heat transferred to the refrigerant(in kJ):
Q3=Wr/(T2/T3-1)
//Heat transferred to reservoir by refrigerant(in kJ):
Q4=Q3+Wr
//Total heat transferred to low temperature reservoir(in kJ):
Wt=Q2+Q4
printf("\nRESULTS\n")
printf("\nHeat transferred to refrigerant = %f kJ",Q3)
printf("\nTotal heat transferred to low temperature reservoir = %f kJ",Wt)