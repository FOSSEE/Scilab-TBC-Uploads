//example-19.6
//page no-567
//given
//electronic charge
e=1.602*10^-19  //C
//lengthof rod
l=10*10^-3  //m
//diameter of rod 
d=1*10^-3  //m
//area of cross section
A=(%pi)/4*d^2  //m^2
//resistance of wire
R=100  //ohm
//mobility of holes 
muh=0.19  //m^2/V s
//resistivity of wire
rho=R*A/l  //ohm m
//conductivity
sigma=1/rho  //per ohm m
//we know that i p-type semiconductore nh>>>ne and eh=e
//so
//sigma=nh*e*muh
//so
nh=sigma/e/muh  //per m^3
printf ("the impurity conc in the rod is %e per m^3",nh)
