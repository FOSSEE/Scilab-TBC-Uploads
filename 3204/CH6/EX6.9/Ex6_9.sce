// Initilization of variabes
Wa=1000 //N // weight of block A
Wb=500 //N // weight of block B
theta=15 // degree // angle of the wedge
mu=0.2 // coefficient of friction between the surfaces in contact
phi=7.5 // degrees // used in case 2
pie=3.14
// Caculations 
// CASE (a)
// consider the equilibrium of upper block A
// rearranging eq'ns 1 &2 and solving them using matrix for N1 & N2
A=[1 -0.4522;-0.2 0.914]
B=[0;1000]
C=inv(A)*B
// Now consider the equilibrium of lower block B
// From eq'n 4
N3=Wb+(C(2)*cosd(theta))-(mu*C(2)*sind(theta)) //N
// Now from eq'n 3
P=(mu*N3)+(mu*C(2)*cosd(theta))+(C(2)*sind(theta)) // N
// CASE (b)
// The eq'n for required coefficient for the wedge to be self locking is,
mu_req=(theta*pie)/(360) // multiplying with (pie/180) to convert it into radians
// Results
clc
printf('The minimum horizontal force (P) which should be applied to raise the block is %f N \n',P)
printf('The required coefficient for the wedge to be self locking is %f \n',mu_req)
