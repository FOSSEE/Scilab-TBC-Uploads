clear
//Given
m=1.67*10**-27
v=4*10**5
a=60
q=1.6*10**-19
B=0.3

//Calculation
//
r=(m*v*sin(a*3.14/180.0))/q*B
P=v*cos(a*3.14/180.0)*((2*%pi*m)/(q*B))

//Result
printf("\n (i) Radius of the helical path is %0.1f  cm",r*10**3)
printf("\n (ii) Pitch of helix is %0.2f  cm",P*10**2)
