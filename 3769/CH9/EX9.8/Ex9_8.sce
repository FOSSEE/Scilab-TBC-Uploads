clear
//Given
m=1.67*10**-27                       //Kg
v=4*10**5
B=0.3                           //T
q=1.6*10**-19                      //C

//Calculation
//
r=m*v*sin(60*3.14/180.0)/(q*B)
P=2*%pi*r*1/(tan(60*3.14/180.0))

//Result
printf("\n Pitch of the helix is %0.2f  cm",P*10**2)
printf("\n Radius of helical path is %0.3f  cm",r*10**2)
