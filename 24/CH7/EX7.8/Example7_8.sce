//Given that
m=.4  //in kg
Vi = .5  //in m/s
k = 750  //in N/m

//Sample Problem 7-8
printf("**Sample Problem 7-8**\n")
//Using work energy theorem
//Wnet = Kf - Ki
//Kf = 0
//.5*k*x^2 = Ki
x = sqrt(m*Vi^2/k)
printf("The compression in the spring is %em", x)