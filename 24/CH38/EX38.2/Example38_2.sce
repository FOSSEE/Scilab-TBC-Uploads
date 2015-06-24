//Given that
Tl = 0.1237*10^-6  //in sec
c = 3*10^8  //in m/s
r = 0.990

//Sample Problem 38-2
printf("**Sample Problem 38-2**\n")
y = 1/sqrt(1-r^2)
Tb = Tl*y  //in laboratory frame
v = r*c
d = v*Tb
printf("The kaon can go till %dm", d)