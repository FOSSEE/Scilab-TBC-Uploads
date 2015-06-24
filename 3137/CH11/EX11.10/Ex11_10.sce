//Initilization of variables
l=2 //ft
W=20 //lb
k=144 //lb/ft
r=0.5 //ft
theta=44.1 //degrees
//Calculations
//Simplfying the solution to obtain
sinetheta=(k*r^2)/(W*l) //in terms of theta
//By trial and error theta=44.1 degrees
//Check for stable equilibirum
Check=-W*cosd(theta)*l+k*r^2
//Result
clc
printf('the Check Value is %f which indicates Stable Equilibirum',Check)
