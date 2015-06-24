//Chapter 3,Example 3.2 Page 106
clc
clear
t1 = 1.2*10^-6
C1 = (0.3/12)*10^3
C2 = 0.4
R1 = (C1+C2)*t1/(3*(C1*C2*10^-9))
t2 = 50*10^-6
R1R2 = t2/(0.7*(C1+C2)*10^-9)// (R1+R2)
R2 = R1R2-R1
printf (" R1 = %f ohm \n ",R1)
printf (" R2 = %f ohm \n ",R2)
// Alternative method
ab = 0.7*10^-6/(t2-t1) // alpha-beta
ghama = C1/C2 // large value therefore
R2 = 10^3/(C1*ab) // mentioned wrong in the text
// alpha = beta and based on the eq: t1 = (2/(2*alpha))log((2*alpha)/(alpha-beta)) 
alpha = 2.43
beeta = 2.415656
R1 = (10^3/C1)*((1/(alpha+beeta))+(62.5/(alpha+beeta)))
V0 = 125*12
Vmax = V0/(2*R1*C2*10^-3*beeta)
printf (" ghama = %f (large value)\n ",ghama)
printf (" R2 = %f ohm \n Since alpha aprox. equla to beta ",R2)
printf (" \n R1 = %f ohm \n ",R1)
printf (" Vmax = %f kV \n ",Vmax)

//Answers vary due to round of error
