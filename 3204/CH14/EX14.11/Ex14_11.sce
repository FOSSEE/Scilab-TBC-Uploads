// Initilization of variables
// Conditions given are
t=1 // s
x=14.75 // m
v=6.33 // m/s
// Calculations
// We use expression 1,2 & 3 to find distance,velocity & acceleration of the particle after 2 sec
T=2 // sec
X=(T^4/12)-(T^3/3)+(T^2)+(5*T)+9 // m // eq'n 3
V=(T^3/3)-(T^2)+(2*T)+5 // m/s 
a=(T^2)-(2*T)+2 // m/s^2
// Results
clc
printf('The distance travelled by the particle is %f m \n',X)
printf('The velocity of the particle is %f m/s \n',V)
printf('The acceleration of the particle is %f m/s^2 \n',a)
// The answer may vary due to decimal point error
