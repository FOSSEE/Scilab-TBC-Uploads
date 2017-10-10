//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//equation of motion, Mass of moment of inertia, percentage 
//reduction in speed
//initialisation of variables
g=5//ft
w=300//rev/min
a=0.86//red/s^2
h=2240//ft/s
q=4//ft
g1=32.1//ft/s
k=3105000//ft lbf
//CALCULATIONS
T=(w*(2*%pi/60))/(a)//sec
M=(q*h*(g^2))/(g1)//slug ft^3
K=((1/2)*M)*((w*2*%pi^2)/(60))//ft lbf
W=sqrt(k/(1/2)/M)//rad/s
P=[(((w*2*%pi)/60)-W)/((w*2*%pi)/60)]*100//percent
//RESULTS
printf('The equation of motion=% f sec',T)
printf('Mass of moment of inertia of =% f ft lbf',K)
printf('the percentage reduction in speed=% f percent',P)
