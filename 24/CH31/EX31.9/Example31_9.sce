//Given that
N1 = 1200   //turns
N2 = N1
R2 = 1.1*10^-2  //in meter
R1 = 15*10^-2  //in meter
uo = 4*%pi*10^-7

//Sample Problem 31-9
printf("**Sample Problem 31-9**\n")
//let's assume
i = 1  //in amp
B1 = uo*N1*i/(2*R1)
phi2 = B1*%pi*R2^2*N2
M = phi2/i
printf("The mutual inductance of the two coil is equal to %1.2eH", M)