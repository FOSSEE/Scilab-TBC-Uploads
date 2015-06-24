// Initilization of variables
W1=100 //N // load acting at pt. C vertically
W2=50 //N // load acting at point B horizontaly
L=2 //m // length of each bar in the hexagonal truss
theta=60 //degree // internal angle of the truss
// Calculations
// We calculate the values of different members of the truss
HG=L*sind(theta)
AF=L
// Support A is hinged whereas support F is a roller support. Firstly we find the support reactios as follows,
Rf=(W2*HG)/AF //N // moment at F
Xa=W2 //N // sum Fx=0
Ya=W1-Rf //N // sum Fy=0
// Now pass a section through the truss cutting the members CD,GD,GE & GF and consider equilibrium of right hand portion of the truss
Fcd=(Rf*(L/2))/(L*sind(theta)) // N (C) // Taking moment about G
// Now pass a scetion pq cutting the members CB,GB & GA
Fga=((Rf*(L+(L/2)))-(W1*(L/2)))/(L*sind(theta)) // N (T) // Taking moment about B
// take moment about G
Fcb=((W1*(L/2))+(Rf*(L/2)))/(L*sind(theta)) // N (C)
Fgb=(Fcb*cosd(theta))-(Fga*cosd(theta)) // N (T) // sum Fx=0
// Results
clc
printf('The axial force in the member CD (Fcd) is %f N \n',Fcd)
printf('The axial force in the member GB (Fgb) is %f N \n',Fgb)
