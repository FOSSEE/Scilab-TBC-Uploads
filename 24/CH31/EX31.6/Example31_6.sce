//Given that
L = 53*10^-3  //in H
R = 0.37  //in Ohm

//Sample Problem 31-6
printf("**Sample Problem 31-6**\n")
//i = io(1-e^(t/T))
//ln2 = t/T
T = L/R
t = T*log(2)
printf("The time taken to rach the current to half of its stedy state value is %fs", t)