clc
//Given that
nc = 0.85 // Compressor efficiency
nt = 0.9 // Turbine efficiency
r = 3.5 // Ratio of max and min temperature 
gama = 1.4 // Ratio of heat capacities for air
printf("\n Example 13.9 \n")
x = (gama-1)/gama
r_opt = ((nc*nt*r)^(2/3))^(1/x)
printf("\n Optimum specific output is %f ",r_opt)
//The answers vary due to round off error

