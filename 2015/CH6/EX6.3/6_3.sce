clc
//initialisation of variables
alpha=20 //angle in degrees
theta=27 //angle in degrees
m=10 //kgs
vs=0.4799 //specific volume in m*m*m/kg
pi=(22/7)
u=100 //blade speed in m/s
//CALCULATIONS
ci=u*tan(27*(pi/180))/(cos(20*(pi/180))*tan(27*(pi/180))-sin(20*(pi/180)))
x=2*ci*cos(20*(pi/180))-u
pd=m*x*u
cf=ci*sin(20*(pi/180))
a=(m*vs)/cf
dm=sqrt(a/(0.08*pi))
h=0.08*dm
//RESULTS
printf('power developed is %2fw',pd)
printf('\narea of flow is %2fm*m',a)
printf('\nblade height is %2fm',h)
