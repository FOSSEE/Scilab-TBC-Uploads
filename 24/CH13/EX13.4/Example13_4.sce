//Given that
m = 55  //in kg
w = 1  //in meter
d = 0.20  //in meter
u1 = 1.1
u2 = 0.70
g = 9.8  //in m/s^2

//Sample Problem 13-4a
printf("**Sample Problem 13-4a**\n")
//From the figure
//fr + fl = m*g
//Nr = Nl
//u1*Nr + u2*Nl = m*g
Nr = m*g/(u1+u2)
Nl = Nr
fr = u2*Nr
fl = u1*Nl
printf("The minimum horiontal push on the wall should be %fN\n", Nr)

//Sample Problem 13-4b
printf("\n**Sample Problem 13-4b**\n")
//balancing torque from the shoulder side wall
l = (fl*w - m*g*d)/Nl
printf("The vertical distance between her shoulder and her feet should be %fm", l)