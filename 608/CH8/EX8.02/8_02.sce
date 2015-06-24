//Problem 8.02: A conductor carries a current of 20 A and is at rightangles to a magnetic field having a flux density of 0.9 T. If the length of the conductor in the field is 30 cm, calculate the force acting on the conductor. Determine also the value of the force if the conductor is inclined at an angle of 30° to the direction of the field.

//initializing the variables:
B = 0.9; // in tesla
I = 20; // in Amperes
l = 0.30; // in m
alpha = 30; // in degree
u0 = 4*%pi*1E-7;

//calculation:
F1 = B*I*l
F2 = B*I*l*sin(alpha*%pi/180)

printf("\n\nResult\n\n")
printf("\n (a)Force when the conductor is at right angles to the field = %.1f N",F1)
printf("\n (b)Force when the conductor is at 30° angle to the field = %.1f N",F2)