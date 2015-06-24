//To find velocities and loss of KE
clc
//Given:
m1=50,m2=25 //kg
u1=3,u2=1.5 //m/s
//Solution:
//When the impact is inelastic
//Calculating the common velocity after impact
v=(m1*u1+m2*u2)/(m1+m2) //m/s
//Calculating the loss of kinetic energy during impact
EL=m1*m2/(2*(m1+m2))*(u1-u2)^2 //N-m
//When the impact is elastic
//Calculating the velocity of the first sphere immediately after impact
v1=2*v-u1 //m/s
//Calculating the velocity of the second sphere immediately after impact
v2=2*v-u2 //m/s
//Calculating the loss of kinetic energy
EL1=0
//When the coefficient of restitution, e=0.6
e=0.6
//Calculating the velocity of the first sphere immediately after impact
v12=(1+e)*v-e*u1 //m/s
//Calculating the velocity of the second sphere immediately after impact
v22=(1+e)*v-e*u2 //m/s
//Calculating the loss of kinetic energy
EL2=m1*m2/(2*(m1+m2))*(u1-u2)^2*(1-e^2) //N-m
//Results:
printf("\n\n The common velocity after impact when the impact is inelastic, v = %.1f m/s.\n",v)
printf(" The loss of kinetic energy during impact, EL = %.2f N-m.\n",EL)
printf(" The velocity of the first sphere immediately after impact when the impact is elastic, v1 = %d m/s.\n",v1)
printf(" The velocity of the second sphere immediately after impact, v2 = %.1f m/s.\n",v2)
printf(" The loss of kinetic energy, EL = %d.\n",EL1)
printf(" The velocity of the first sphere immediately after impact When the coefficient of restitution is 0.6, v1 = %.1f m/s.\n",v12)
printf(" The velocity of the second sphere immediately after impact, v2 = %.1f m/s.\n",v22)
printf(" The loss of kinetic energy during impactm EL = %d N-m.\n\n",EL2)