//Chapter-7,Example7_18,pg 7-50
x=30//deflection
dM=5*sin((x+45)*(%pi/180))*10^-3//diffrentiate M w.r.t x
I=10*10^-3
Td=(I^2)*dM//deflecting torque
printf("deflecting torque\n")
printf("Td=%.8f Nm",Td)
