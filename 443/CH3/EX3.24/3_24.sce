pathname=get_absolute_file_path('3_24.sce')
filename=pathname+filesep()+'3_24_data.sci'
exec(filename)
//Efficiency of Otto cycle
notto=1-(1/r^(y-1))
//Heat supplied(in kJ/s)
qs=P/notto
//No of cycles per second
Nc=N/(2*60)
//Net work output per cycle per cylinder(in kJ)
W=P/(k*Nc)
//Mean effective pressure(in N/m^2)
pm=W*1000/Vs
//Temperature at end of compression stroke(in K)
T2=T1*(r)^(y-1)
//Heat supplied per cycle per cylinder(in kJ)
q23=qs/(k*Nc)
//Volume flow of air(in m^3/kg)
v1=(R*T1)/(p1*10^5)
//Volume at start of compression stroke(in m^3)
V1=(Vs*r)/(r-1)
//Mass flow rate(in kg)
m=V1/v1
//Temperature rise resulting from heat addition(in K)
T3=T2+(q23/(m*Cv))
//Now considering diesel cycle
//Temperature rise resulting from heat addition(in K)
T3d=(q23/(m*Cp))+T2
//Cutoff ratio
rc=T3d/T2
//Air standard efficiency
nd=1-(1/(y*r^(y-1))*(((rc^y)-1)/(rc-1)))
//Power output(in kW)
Pd=nd*qs
//Power ouput per cylinder
Pn=Pd/k
//Work done per cycle per cylinder(in kJ)
Wd=Pn/Nc
//Mean effective pressure(in N/m^2)
pmd=Wd*1000/Vs
printf("\n\nRESULTS\n\n")
printf("\nEfficiency of Otto cycle:%f\n",notto*100)
printf("\nHeat supplied:%f\n",qs)
printf("\nMean effective pressure:%f\n",pm)
printf("\nTemperature rise resulting from heat addition:%f\n",T3)
printf("\nTemperature rise resulting from heat addition for diesel cycle:%f\n",T3d)
printf("\nAir standard efficiency:%f\n",nd*100)
printf("\nMean effective pressure:%f\n",pmd)