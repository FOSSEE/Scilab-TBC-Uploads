clc,clear
//Example 4.12
//To determine area of segment formed by a chord in circle

radius = 2
chord = 3
//Use law of cosines
cos_theta = (radius^2+radius^2-chord^2)/(2*radius*radius)
theta=acos(cos_theta) //subtended central angle in radians

area_K=radius^2* (theta-sin(theta))/2
printf('Required area of segment = %.3f square units',area_K)
