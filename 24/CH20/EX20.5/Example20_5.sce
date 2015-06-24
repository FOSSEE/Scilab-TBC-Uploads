//Given that
T = 300  //in K
v1 = 599  //m/s
v2 = 601  //in m/s
M = 0.0320  //in kg/mol
R = 8.31  //J/(mol.K)

//Sample Problem 20-5
printf("**Sample Problem 20-5**\n")
v = (v1+v2)/2
deltav = v2 - v1
f = 4*%pi*(M/(2*%pi*R*T))^(3/2)*v^2*%e^(-M*v^2/2/R/T)*deltav
printf("The fraction of molecules having speed in given range is %e", f)