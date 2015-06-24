//pathname=get_absolute_file_path('7.14.sce')
//filename=pathname+filesep()+'7.14-data.sci'
//exec(filename)
//Volume of compartment A(in m^3):
Va=6
//Volume of compartment B(in m^3):
Vb=4
//Pressure in compartment A(in bar):
p1=6
//Temperature in compartment A(in K):
T1=600
//Atmosheric pressure(in bar):
p0=1
//Atmosheric temperature(in K):
T0=300
//Adiabatic index of compression:
r=1.4
//Gas constant(in J/kg.K):
R=0.287
//Value of Cv(in kJ/kg.K):
Cv=0.718
//Final volume(in m^3):
V2=Va+Vb
//Final temperature(in K):
T2=T1*(Va/V2)^(r-1)
//Mass of air(in kg):
m=p1*10^5*Va/(R*10^3*T1)
//Change in entropy of control system(in kJ/kg.K):
dSs=m*(Cv*log(T2/T1)+R*log(V2/Va))
//Loss of available energy or irreversibilty(in kJ):
I=T0*dSs
printf("\nRESULT")
printf("\nLoss of available energy = %f kJ",-I)