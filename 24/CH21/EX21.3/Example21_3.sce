//Given that
TH = 850  //in K
TL = 300  //in K
W = 1200  //in J
t = 0.25  //in sec

//Sample Problem 21-3a
printf("**Sample Problem 21-3a**\n")
eta = 1 - (TL/TH)
printf("The efficiency of the cycle is equal to %f\n", eta)

//Sample Problem 21-3b
printf("\n**Sample Problem 21-3b**\n")
P = W/t
printf("The average power of the cycle is %fW\n", P)

//Sample Problem 21-3c
printf("\n**Sample Problem 21-3c**\n")
QH = W/eta
printf("The heat extracted from the reservoir is equal to %fJ\n", QH)

//Sample Problem 21-3d
printf("\n**Sample Problem 21-3d**\n")
QL = W - QH
printf("The heat delivered to the reservoir is equal to %fJ\n", QL)

//Sample Problem 21-3e
printf("\n**Sample Problem 21-3e**\n")
S = QH/TH + QL/TL
printf("The net entropy change for the cycle is %fJ/k", S)