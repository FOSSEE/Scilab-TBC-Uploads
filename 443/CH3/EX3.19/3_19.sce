pathname=get_absolute_file_path('3_19.sce')
filename=pathname+filesep()+'3_19_data.sci'
exec(filename)
//Compression ratio
r=1+rsc
//Pressure at end of compression stroke(in bar)
p2=r^y*p1
//Temperature at end of compression(in K)
T2=r^(y-1)*T1
//Pressure at start of expansion stroke(in bar)
p3=p2
//Cutoff ratio
rc=T3/T2
//Expansion ratio
re=r/rc
//Temperature at end of expansion stroke(in K)
T4=T3/(re^(y-1))
//Pressure at end of expansion stroke(in bar)
p4=p3/re^y
//Efficiency of diesel cycle
ncyc=(1-((Cv*(T4-T1))/(Cp*(T3-T2))))*100
//Work output(in kJ/kg)
W=Cp*(T3-T2)-Cv*(T4-T1)
//Gas constant(in kJ/kgK)
R=Cp-Cv
//Initial volume(in m^3)
V1=((1+rsc)/rsc)*k*0.25*%pi*d^2*L
//Mass flow rate of air(in kg/s)
ma=(p1*10^5*V1*N)/(R*1000*T1*2)
//Power output(in kW)
P=W*ma
printf("\n\nRESULTS\n\n")
printf("\nCompression ratio:%f\n",r)
printf("\nPressure at end of compression stroke:%f\n",p2)
printf("\nTemperature at end of compression:%f\n",T2)
printf("\nPressure at start of expansion stroke:%f\n",p3)
printf("\nTemperature at end of expansion stroke:%f\n",T4)
printf("\nPressure at end of expansion stroke:%f\n",p4)
printf("\nEfficiency of diesel cycle:%f\n",ncyc)
printf("\nPower output:%f\n",P)

