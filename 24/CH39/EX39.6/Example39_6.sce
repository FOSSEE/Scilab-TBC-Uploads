//Given that
v = 2.05*10^6  //in m/s
h = 6.62*10^-34  //in J.s
hC = h/(2*%pi)
precision = .50/100
Me = 9.109*10^-31  //in kg

//Sample Problem 39-6
printf("**Sample Probelm 39-6**\n")
Px = Me*v
deltaPx = precision*Px
deltaX = hC/deltaPx
printf("The error in measuring x is %dnm", deltaX*10^9)