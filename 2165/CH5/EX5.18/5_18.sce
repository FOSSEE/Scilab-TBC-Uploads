clc
//initialisation of variables
h=0.8//dry
p=120//lb/in^2
p1=1//lb/in^2
t=100//Degree C
A=99.6-38.6-0.178*311.8//C.H.U
G=311.8//units of entropy
AF=440.52//C.H.U
H=399.82//lb/in^2
p=307//lb
//CALCULATIONS
T=H/p//C.H.U
//RESULTS
printf('theoretical coefficient pf performance as a refrigeratior=% f C.H.U',T)
