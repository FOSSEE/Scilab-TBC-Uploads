pathname=get_absolute_file_path('3_21.sce')
filename=pathname+filesep()+'3_21_data.sci'
exec(filename)
//Ratio of specific heats
y=Cp/Cv
//Temperature at end of compression stroke(in K)
T2=(r^(y-1))*T1
//Pressure at the end of compression stroke(in bar)
p2=(r^y)*p1
//Temperature at start of constant pressure heat addition(in K)
T3=(p3*T2)/p2
//Cutoff ratio
rc=T4/T3
//Heat supplied(in kJ)
Hs=Cv*(T3-T2)+Cp*(T4-T3)
//Temperature at end of expansion stroke(in K)
T5=T4*(rc/r)^(y-1)
//Heat rejected per kg(in kJ)
Hr=Cv*(T5-T1)
//Work output per kg(in kJ)
W=Hs-Hr
//Efficiency of dual cycle
ndual=W/Hs*100
printf("\n\nRESULTS\n\n")
printf("\nTemperature at start of constant pressure heat addition:%f\n",T3)
printf("\nCutoff ratio:%f\n",rc)
printf("\nHeat supplied:%f\n",Hs)
printf("\nTemperature at end of expansion stroke:%f\n",T5)
printf("\nWork output per kg:%f\n",W)
printf("\nEfficiency of dual cycle:%f\n",ndual)
