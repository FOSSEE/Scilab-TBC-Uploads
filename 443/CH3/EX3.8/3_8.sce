pathname=get_absolute_file_path('3_8.sce')
filename=pathname+filesep()+'3_8_data.sci'
exec(filename)
//Volume at start of compression stroke(in m^3)
V1=(m*R*T1)/(M*p1*10^5)
//Pressure at end of compression of sroke(in bar)
p2=p1*r^y
//Volume at end of compression stroke(in m^3)
V2=V1/r
//Temperature at end of compression stroke(in K)
T2=(p2/p1)*(V2/V1)*T1
//Volume at start of expansion(in m^3)
V3=V2
//Temperature at start of expansion stroke(in K)
T3=(p3*T2)/p2
//Pressure at end of expansion stroke(in bar)
p4=p3*(V3/V1)^y
//Volume at end of expansion(in m^3)
V4=V1
//Temperature at end of expansion(in m^3)
T4=T1*(p4/p1)
//Specific heat at constant volume(in kJ/kgK)
Cv=R/(M*(y-1))
//Heat supplied per unit mass(in kJ)
Hs=Cv*(T3-T2)
//Heat Rejected per unit mass(in kJ)
Hr=Cv*(T4-T1)
//Ratio of heat supplied and rejected
Rsr=Hs/Hr
printf("\n\nRESULTS\n\n")
printf("\nVolume at start of compression stroke:%f\n",V1)
printf("\nPressure at end of compression of sroke:%f\n",p2)
printf("\nVolume at end of compression stroke:%f\n",V2)
printf("\nTemperature at end of compression stroke:%f\n",T2)
printf("\nVolume at start of expansion:%f\n",V3)
printf("\nTemperature at start of expansion stroke:%f\n",T3)
printf("\nPressure at end of expansion stroke:%f\n",p4)
printf("\nVolume at end of expansion:%f\n",V4)
printf("\nTemperature at end of expansion:%f\n",T4)
printf("\nRatio of heat supplied and rejected:%f\n",Rsr)
