//To find the speed and energy dissipated
clc
//Given:
m1=15*1000,m2=5*1000 //kg
u1=20*1000/3600,u2=12*1000/3600 //m/s
s=1000*10^3 //N/m
e=0.5
//Solution:
//Calculating the common speed
v=(m1*u1+m2*u2)/(m1+m2) //m/s
//Calculating the strain energy stored in one spring
SE=mulf('1/2*s','x^2') //Strain energy, N-m
//Calculating the strain energy stored in four buffer springs
SE4=mulf('4*1/2*s','x^2') //Strain energy, N-m
//Calculating the difference in kinetic energies before impact and during impact
d=m1*m2/(2*(m1+m2))*(u1-u2)^2 //Difference in kinetic energies, N-m
//Equating the difference between kinetic energies to the strain energy stored in the springs
x=sqrt(d*2/(4*s))*1000 //mm
//Calculating the speed of the loaded wagon immediately after impact ends
v11=2*v-u1 //m/s
//Calculating the speed of the empty wagon immediately after impact ends
v21=2*v-u2 //m/s
//Calculating the speeds of the wagons taking into account the coefficient of restitution, e=0.5
v12=(1+e)*v-e*u1 //m/s
v22=(1+e)*v-e*u2 //m/s
//Calculating the amount of energy dissipated during impact
EL=m1*m2/(2*(m1+m2))*(u1-u2)^2*(1-e^2) //N-m
//Results:
printf("\n\n The magnitude of common speed, v = %d m/s.\n",v)
printf(" The maximum deflection of each buffer spring during impact, x = %d mm.\n",x)
printf(" The speed of the loaded wagon immediately after the impact ends, v1 = %.2f m/s.\n",v11)
printf(" The speed of the empty wagon immediately after the impact ends, v2 = %.2f m/s.\n",v21)
printf(" When coefficient of restitution is taken into account, v1 = %.3f m/s.\n",v12)
printf(" When coefficient of restitution is taken into account, v2 = %.3f m/s.\n",v22)
printf(" The amount of energy dissipated during impact, EL = %d N-m.\n\n",EL)