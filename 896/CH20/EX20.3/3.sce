clc
//Example 20.3
//Calculate the grid velocities
v=1.077*10^(-5)//ft^2/s
t=2//sec
dy=0.01//ft
w=v*t/dy^2//dimentionless
//Let Vij represent velocity through the i,j grid
V00=5//ft/s
V10=5//ft/s
V01=0//ft/s
V02=0//ft/s
V12=0//ft/s
V11=V01+w*(V00-2*V01+V02)//ft/s
V21=V11+w*(V10-2*V11+V12)//ft/s
printf("The grid velocity for 2,1 is %f ft/s\n",V21);
V13=0//ft/s
V22=V12+w*(V11-2*V12+V13)//ft/s
printf("The grid velocity for 2,2 is %f ft/s\n",V22);