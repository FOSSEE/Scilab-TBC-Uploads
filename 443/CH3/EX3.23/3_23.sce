pathname=get_absolute_file_path('3_23.sce')
filename=pathname+filesep()+'3_23_data.sci'
exec(filename)
//Ratio of specific heats
y=Cp/Cv
//Cutoff ratio
rc=r/re
//Temperature at end of compression stroke(in K)
T2=(r^(n-1))*T1
//Pressure at the end of compression stroke(in bar)
p2=(r^n)*p1
//Temperature at start of constant pressure heat addition & heat liberated at constant pressure is twice the heat liberated at constant volume(in K)
T3=(2*T2)/(y*((2/y)-(rc-1)))
//Temperature at start of expansion stroke(in K)
T4=rc*T3
//Pressure at start of constant pressure heat addition(in bar)
p3=(T3/T2)*p2
//Pressure at end of constant pressure heat addition(in bar)
p4=p3
//Temperature at end of expansion stroke(in K)
T5=T4/(re^(n-1))
//Pressure at end of expansion stroke(in bar)
p5=p4/(re^n)
//Mean effective pressure(in bar)
pm=((((p3*rc-p5*r)/(n-1))+(p3*(rc-1))-((p2-p1*r)/(n-1)))/(r-1))
//Work done(in kJ/kg)
w=(pm*(r-1)*10^5*m*R*T1)/(p1*r*10^5)*10^-3
//Heat supplied(in kJ/kg)
qs=Cv*(T3-T2)+Cp*(T4-T3)
//Efficiency of dual cycle
n=w/qs*100
printf("\n\nRESULTS\n\n")
printf("\nMean effecive pressure:%f\n",pm)
printf("\nEfficiency of dual cycle:%f\n",n)