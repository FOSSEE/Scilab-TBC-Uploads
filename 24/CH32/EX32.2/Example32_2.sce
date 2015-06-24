//Given that
density = 7900  //in kg/m^3
L = 3*10^-2  //in meter
w = 1*10^-3  //in meter
t = 0.50*10^-3  //in meter
MFe = 2.1*10^-23  //in J/T
f = 10/100
M = 55.847*10^-3  //in kg/mol
Na = 6.023*10^23  //in /mol

//Sample Problem 32-2
printf("**Sample Problem 32-2**\n")
N = density*L*w*t/M * Na
MD = N*f*MFe
printf("The needles magnetic dipole moment is %1.2eJ/T", MD)