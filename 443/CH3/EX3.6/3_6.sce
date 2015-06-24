pathname=get_absolute_file_path('3_6.sce')
filename=pathname+filesep()+'3_6_data.sci'
exec(filename)
//Pressure at end of compression stroke(in N/m^2)
p2=(r^y)*p1*10^5
//Temperature at the end of compression sroke(in K)
T2=(r^(y-1))*300
//Temperature at start of expansion stroke(in N/m^2)
T3=((p3*10^5)/p2)*T2
//Pressure at the end of expansion sroke(in N/m^2)
p4=p3/(r^(y))*10^5
//Temperature at the end of expansion stroke(in K)
T4=T3/(r^(y-1))
//Efficiency of Otto cycle
notto=(1-1/(r^(y-1)))*100
//Mean effective pressure(in bar)
pm=(1/((r-1)*(y-1)))*(((p3*10^5)-p4*r)-(p2-(p1*10^5*r)))*10^-5
printf("\n\nRESULTS\n\n")
printf("\nPressure at end of compression stroke:%f\n",p2)
printf("\nTemperature at the end of compression sroke:%f\n",T2)
printf("\nTemperature at start of expansion stroke:%f\n",T3)
printf("\nPressure at the end of expansion sroke:%f\n",p4)
printf("\nTemperature at the end of expansion stroke:%f\n",T4)
printf("\nEfficiency of Otto cycle:%f\n",notto)
printf("\nMean effecive pressure:%f\n",pm)