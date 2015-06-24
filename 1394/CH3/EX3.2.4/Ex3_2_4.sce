
clc
D = 0.1 // cm^2/sec
l = 10 // cm
C10 = 1
C1l = 0
C1 = 0.5
V1 = (D/l)*(C10 - C1l)/C1 // Cm/sec
V2 = -V1
M1 = 28 
M2 = 2
omeg1 = C1*M1/(C1*M1 + C1*M2)
omeg2 = C1*M2/(C1*M1 + C1*M2)
V = omeg1*V1 + omeg2*V2
printf("The mass average velocity is %.5f cm/s",V)
