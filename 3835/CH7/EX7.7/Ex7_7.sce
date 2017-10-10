clear
//
//From the circuit diagram of the figure we can obtain tha following equations based on which the problems are solved
//eqn 1..........vl=(i1+i2)*zl....the load voltage
//eqn 2..........vl=e1-i1*z1=e2-i2*z2
//eqn 3..........i1=(e1-vl)*y1 and i2=(e2-vl)*y2
//eqn 4..........vl=(e1*y1+e2+y2)/(y1+y2+yl)
//load voltage case a
//vl=209.26-j*9.7 in x+iy form and angle is calculated 
vl=(209.26**2+9.7**2)**0.5
printf("\n load voltage= %0.5f  v",vl)
//using eqn 3 the following generator currents are generated
//i1=7.45-j5.92 for which i1=9.52 at angle -38.45 is generated
//i2=8.91-j7.17 for which i2=11.43 at angle -38.83 is generated
//case b
//the load current il=i1+i2 is obtained as 20.95 at angle -38.65
printf("\n the load current is 20.95 at angle -38.65")
//case c
g1=220*9.52
g2=220*11.43
printf("\n The output of generator1= %0.3f  VA",g1)
printf("\n The output of generator2= %0.4f  VA",g2)
