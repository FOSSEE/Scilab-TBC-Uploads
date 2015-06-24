pathname=get_absolute_file_path('17_35.sce')
filename=pathname+filesep()+'17_35_data.sci'
exec(filename)
//Volume at end of compression stroke(in cc)
V2=Vs/(r-1)
//Volume at end of combustion stroke(in cc)
V3=(Vs*x)+V2
//Temperature at the end of combustion stroke(in K)
T3=T2*(p3/p2)*(V3/V2)
//Work done during compression(in kJ)
W23=((p2+p3)/2*10^5*(V3-V2))*10^-6
//Mixture mass(in kg)
m=(p2*10^5*V2*10^-6)/(R*T2)
//Increase in internal energy(in kJ)
dE=m*(1-R)*(T3-T2)
//Heat developed(in kJ)
Q=dE+W23
//Heat lost during explosion(in kJ/kg)
Hloss=((1/(AF+1)*m*CV)-Q)/m
printf("\n\nRESULTS\n\n")
printf("\nHeat lost during explosion:%f\n",Hloss)
