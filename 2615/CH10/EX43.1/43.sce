clc
//initialisation of variables
d=125//mm
D=2000//mm
n=240//rpm
t=60*1000//mm/sec
//CALCULATIONS
V=%pi*D*n/t//m/sec
V1=V*(d/D)//m/sec
an=2*(V)^2/2//m/sec^2
//RESULTS
printf('the paripheral velocity=% f m/sec^2',an)
