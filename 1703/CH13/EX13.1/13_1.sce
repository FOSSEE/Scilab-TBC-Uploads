
clc
//initialisation of variables
W= 5000 //lb
vr= 6
e= 0.95
ep = 0.75
d= 9 //in
D= 45 //ft
t= 2 //min
v= 4.5 //ft/sec
//CALCULATIONS
L= W*vr/(e*ep)
Pr= L/(%pi*d^2/4)
s= D/vr
V= s*%pi*ep^2/(4*t*60)
T= D/v
V1= s*%pi*ep^2/4
V2= V*T
V3= V1-V2
//RESULTS
printf ('Pressure on ram = %.f ln/in^2 ',Pr)
printf('\n Pump duty = %.4f cusec',V)
printf ('\n Minimum capacity if accumulator = %.3f ft^3 ',V3)

