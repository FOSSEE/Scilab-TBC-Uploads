pathname=get_absolute_file_path('3_7.sce')
filename=pathname+filesep()+'3_7_data.sci'
exec(filename)
//Pressure at end of compression stroke(in N/m^2)
p2=(r^y)*p1*10^5
//Temperature at the end of compression sroke(in K)
T2=(r^(y-1))*T1
//Temperature at start of expansion stroke(in N/m^2)
T3=(qs/Cv)+T2
//Peak pressure(in N/m^2)
p3=(T3/T2)*p2
//Temperature at end of expansion stroke(in K)
T4=T3/(r^(y-1))
//Work output per kg(in kJ)
W=(((y*Cv)-Cv)/(y-1))*((T3-T4)-(T2-T1))
//Efficiency of otto cycle
notto=(1-(1/r^(y-1)))*100
printf("\n\nRESULTS\n\n")
printf("\nTemperature at start of expansion stroke:%f\n",T3)
printf("\nPeak pressure:%f\n",p3)
printf("\nWork output per kg:%f\n",W)
printf("\nEfficiency of otto cycle:%f\n",notto)