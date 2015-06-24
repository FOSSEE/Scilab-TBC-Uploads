
clc 
//Given that
v = 5760 // Velocity in m/s
T = 1.6 // Thickness of quartz crystal in mm
printf("Example 6.2\n")
nu = v/(2*T*1e-3)// Calculation of fundamental frequency
printf("Fundamental frequency of crystal is %f MHz.\n\n\n",nu/1e6)

