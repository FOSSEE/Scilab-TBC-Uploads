pathname=get_absolute_file_path('3_3.sce')
filename=pathname+filesep()+'3_3_data.sci'
exec(filename)
//For Process 1 and 2
//Compression Ratio 
r=(p2/p1)^(1/y)
//Efficiency 
n=1-((1/r)^(y-1))
//Final Temperature (in kelvin)
t2=(p2*t1)/(p1*r) 
//For Process 2 and 3
t3=(p3 /p2)*t2
//Heat Supplied
qs=Cv*(t3 - t2)
//Work Done (in kJ/ kG)
w=n*qs
//Volume flow at inlet(in m^3/kg)
v1=R*(t1/(29*p1*10^5))
//Swept Volume 
Vs=(r-1)/(r)*v1
//Mean Effective Pressure (in N/m2)
pm=(w*10^3)/Vs*10^-5
printf("\n\nResults\n\n")
printf("\n\nEfficiency: %f\n\n ",n*100)
printf("\n\nMean Effective Pressure : %f \n\n",pm)
