pathname=get_absolute_file_path('4_3.sce')
filename=pathname+filesep()+'4_3_data.sci'
exec(filename)
//Question 4.3
//New Pressure(in bar)
p2=p1*(rc^n)
//New temperature(in kelvin)
t2=(t1)*(p2/p1)*(1/rc)
//Average temperature(in kelvin)
//t=(t3+t2)/2
//Heat transfer(in mJ)
Q23=CV/AF
//Finding t3 using formula Q23=Cvmean*m*(t3-t2)(in bar)
m=poly([(y/2) x (-((Q23*AF)/(AF+1))-(t2*x)-(0.5*y*(t2^2)))],"t3",["roots"])
printf("\nt3:%f\n",roots(m))
//Pressure p3(in bar)
p3=p2*(t3/t2)
//For constant specific heat
t32=((Q23*1000)/(Cv*m))+t2
//Pressure p32 (in bar)
p32=p2*(t32/t2)
printf("\n\nRESULTS\n\n")
printf("\nFor variable specific heat\n")
printf("\nt2:%f\n",t2)
printf("\nQ23:%f\n",Q23)
printf("\nPressure: %f\n",p3)
printf("\nFor constant specific heat\n")
printf("\nPressure:%f\n",p32)