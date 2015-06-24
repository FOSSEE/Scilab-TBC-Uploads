pathname=get_absolute_file_path('3_22.sce')
filename=pathname+filesep()+'3_22_data.sci'
exec(filename)
//Ratio of specific heats
y=Cp/Cv
//Temperature at end of compression stroke(in K)
T2=(r^(y-1))*T1
//Pressure at the end of compression stroke(in bar)
p2=(r^y)*p1
//Temperature at start of constant pressure heat addition(in K)
T3=(p3*T2)/p2
//Heat added during constant volume combustion(in kJ/kg)
Hav=Cv*(T3-T2)
//Heat added during constant pressure combustion(in kJ/kg)
Hap=Htot-Hav
//Temperature at end of constant pressure heat addition(in K)
T4=(Hap/Cp)+T3
//Cutoff ratio
rc=T4/T3
//Temperature at end of expansion stroke(in K)
T5=T4*(rc/r)^(y-1)
//Pressure at end of expansion stroke(in bar)
p5=p4*(rc/r)^y
//Heat rejected(in kJ/kg)
Hr=Cv*(T5-T1)
//Efficiency of dual cycle
n=(Htot-Hr)/Htot
printf("\n\nRESULTS\n\n")
printf("\nPressure at the end of compression stroke:%f\n",p2)
printf("\nTemperature at end of compression stroke:%f\n",T2)
printf("\nTemperature at start of constant pressure heat addition:%f\n",T3)
printf("\nTemperature at end of constant pressure heat addition:%f\n",T4)
printf("\nTemperature at end of expansion stroke:%f\n",T5)
printf("\nPressure at end of expansion stroke:%f\n",p5)
printf("\nEfficiency of dual cycle:%f\n",n*100)