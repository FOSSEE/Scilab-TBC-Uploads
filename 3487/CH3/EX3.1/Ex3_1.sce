//Chapter 3,Example 3.1 Page 104
clc
clear
R1 = 75 //ohms
R2 = 2600 //ohms
C1 = 25 // nF
C2 = 2.5 //nF
alpha = (10^9/2)*(1/(R2*C1)+1/(R1*C1)+1/(R1*C2))
beeta = (1/2)*sqrt(4*alpha^2-4*10^18/(R1*R2*C1*C2)) 
t1 = (1/(2*beeta))*log((alpha+beeta)/(alpha-beeta))
K = 0.7/(t1*(alpha-beeta))+1
t2 = K*t1
printf (" alpha = %e  \n ",alpha)
printf (" beta = %e \n ",beeta)
printf (" K = %f \n ",K)
printf (" t1 = %e micro sec \n ",t1*10^6)
printf (" t2 = %f micro sec \n ",t2*10^6)

//Aproximating the circuit and neglecting R2
t1 = 3*((C1*C2*10^-18)/(C1+C2*10^-9))*R1
// C1 and C2 are in  parallel and R1 and R2 in series
t2 = 0.7*(R1+R2)*(C1+C2)*10^-9
printf (" t1 = %f micro sec \n ",t1*10^9*10^6)
printf (" t2 = %f micro sec \n ",t2*10^6)
printf ("On comparison with the values obtained through exact formulate it is found that whereas wave tail time is more or less same, \n the wave front time as calculated through approximate formula is quite erroneous.")

// Answers may vary due to round off error

