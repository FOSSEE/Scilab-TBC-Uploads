// calculate the mach number
//ex 2.9 pgno 46
clc
patm=101000 //  applying ideal characteristic equation
p=9800//static presure
t=0.016 //temperature
p1=(p*t)+patm//stagnatio presure
mprintf('P= Pg+Patm = %e k Pa',p1)
R=287 // Radius
T=273 // temperature
t1=T+20 
P=p1/(R*t1)
mprintf(' \n p = %f kg/m3',P)
p0=0.032
p11=0.016
V=sqrt((2*(p0-p11)*p)/(1.2))//velocity
mprintf(' \n V= %f m/s',V)
K=1.4//Radius
C=sqrt(K*R*t1)//velocity of sound
mprintf('\n velocity of sound C= %d  m/s',C)
M=V/C//mach number
mprintf(' \n Mach number M= V/C = %f',M)
mprintf(' \n The flow is incompressible as macho number is less than 0.3')
