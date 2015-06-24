//Given that
C1 = 3.55  //in uF
Vo = 6.30  //in Volts
C2 = 8.95  //in uF

//Sample Problem 26-3
printf("**Sample Problem 26-3**\n")
qT = C1*Vo  //Total charge
q1 = qT*C1/(C1+C2)  //in parallel
V = q1/C1
printf("The final potential difference between each capacitor is equal to %fV", V)