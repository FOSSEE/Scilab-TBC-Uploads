//Initilization of variables
theta=75 //degrees
alpha=(150*%pi)/180 //rad
r=1
theta1=30 //degrees
lhor=14 //in
//calculations
a=((2*r)/alpha)*sind(theta) //in
y=-a*sind(90-theta) //in
//Length of arc
l=r*alpha //in
//Slope length calculations
DF=7 //in
AB=DF //in
BC=1 //in
BF=BC*cosd(theta1) //in
FC=BC*sind(theta1) //in
DC=DF+FC //in
EC=DC/cosd(theta1) //in
//Centroid of EC is at G
yslope=0.5*EC*sind(theta1)+BF //in
//Y of composite figure
Y=((2*l*y)+14*-1+(2*EC*yslope))/(2*l+lhor+2*EC) //in
//Result
clc
printf('The centroid is at Y=%f in',Y)
