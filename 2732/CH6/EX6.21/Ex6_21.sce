clc
// initialization of variables
clear
D=5 //cm
d=2 //cm
t_y=3000 //kg/cm^2
// calculations
R=D/2 
r=d/2 
Tep=2*%pi*R^3*t_y/3-%pi*r^3*t_y/6
t_er=2*Tep/(%pi*R^3)
t_er1=t_er*r/R
prs=t_y-t_er1
nrs=t_er-t_y
// results
printf('Maximum +ve residual stress occurs at %d cm radius and is equal to \n %d kg/cm^2',r,prs)
printf('\n Maximum -ve residual stress occurs at %d cm radius and is equal to \n %d kg/cm^2',R,-nrs)
