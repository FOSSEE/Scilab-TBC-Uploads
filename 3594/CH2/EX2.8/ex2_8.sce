
clc
printf("\n")
m=20//lb
g=32.2
a=200//ft/s^2
w=120//rad/s^2
k=7//in
f=(m/g)*a//effective force appllied to the link
//this force acts parallel to the acceleration fg
t=(m/g)*(k/12)^2*w//couple required in order to provide the angular acceleration
//the line of action of F is therefore at a distance from G given by
x=t/f
printf("Effective force applied to the link is %.3f lb and the line of action of F is therefore at a distance from G given by %.3f ft \n",f,x)
printf("F is the resultant of Fa and Fb, using x as shown in figure.25 , the force F may then be resolved along the appropriate lines of action to give the magnitudes of Fa and Fb\n")
printf("From the scaled diagram shown in figure we get,Fa=65 lb and Fb=91 lb\n")
