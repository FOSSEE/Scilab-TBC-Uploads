// Intilization of variables
acc=0.5 // m/s^2 // acceleration of the elevator
s=25 // m // distance travelled by the elevator from the top
u=0 // m/s
g=9.81 // m/s^2 // acc due to gravity
// Calculations
// Using eq'n the eq'n v^2-u^2=2*a*s, solving for v we get,
v=sqrt((2*acc*s)+(u^2)) // m/s 
// Now solving eq'n 1 & 2 for t we get, (4.655*t^2)-(5*t)+(25)=0
// Find the roots of the eq'n using the eq'n,t=(-b+sqrt(b^2-(4*a*c)))/(2*a).In this eq'n the values of a,b & c are,
a=4.655
b=-5
c=-25
t=(-b+sqrt((b^2)-(4*a*c)))/(2*a) // seconds
// Let S_1 be the distance travelled by the elevator after it travels 25 m from top when the stone hits the elevator,This disance S_1 is given as,
S_1=(v*t)+((1/2)*acc*t^2) // m
// Let S be the total dist from top when the stone hits the elevator,
S=S_1+s // m
// Results
clc
printf('The time taken by the stone to hit the elevator is %f seconds \n',t)
printf('The distance (S)travelled by the elevator at the time of impact is %f m \n',S)
