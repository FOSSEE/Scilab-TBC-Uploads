//Given that
Erms = 120  //in volts
fd = 60  //in Hz
R = 200  //in ohm
Xl = 80.0  //in ohm
Xc = 150  //in ohm

//Sample Problem 33-8a
printf("**Sample Problem 33-8a**\n")
Z = sqrt(R^2 + (Xl - Xc)^2)
pf = R/Z
printf("The power factor for the circuit is %.3f\n", pf)

//Sample Problem 33-8b
printf("\n**Sample Problem 33-8b**\n")
Irms = Erms/R
Pavg = Erms*Irms*pf
printf("The average rate of disscipation of energy is equal to %1.2fW\n", Pavg)

//Sample Problem 33-8c
printf("\n**Sample Problem 33-8c**\n")
Xc = Xl
w = 2*%pi*fd
Cnew = 1/Xc/w
printf("The new capacitance should be %1.2eF", Cnew)