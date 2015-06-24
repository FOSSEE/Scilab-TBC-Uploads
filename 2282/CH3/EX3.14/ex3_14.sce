// Example 3.14, page no-107
clear
clc

r=42164             // orbital radius of the satellite in km
R=6378              //Earth's radius in km

//refer to Figure 3.53
//for E=0°
alfa=asin(R/r)*(180/%pi)
alfa=floor(alfa*10)/10
theta=90-alfa
//in the right angle triangle OAC,
k=sind(alfa)
k=floor(k*1000)/1000
oc=R*k
oc=ceil(oc*10)/10
A=2*%pi*R*(R-oc)


//for E=10°
E=10
alfa1=asin((R/r)*cosd(E))*(180/%pi)
//alfa1=ceil(alfa1*100)/100
theta1=90-alfa1-E
//in the right angle triangle OAC,
k1=sind(alfa1+E)
k1=floor(k1*1000)/1000
oc1=R*k1
oc1=floor(oc1*10)/10
A1=2*%pi*R*(R-oc1)

printf("for E=0°,\n covered surface area is %.1f km^2",A)
printf("\n\n for E=10°,\n covered surface area is %.1f km^2",A1)
