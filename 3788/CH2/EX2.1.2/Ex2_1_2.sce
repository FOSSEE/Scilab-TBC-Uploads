//Example 2.1.2
// Calculate the Orbital radius and Linear Velocity of Shuttle along its orbit

//Variable Declaration
re=6378.14                //radius of earth in km
h=250                     //altitude in km
a=re+h
u=(3.986004418*10^5)

//Calculation
T=sqrt((4*(%pi^2)*(a^3)/u))              // Period of orbit in Sec
circum=2*%pi*a                               //circumference of orbut=2*pi*a in km
Vs=(2*%pi*a)/T                              //velocity in km/s
v=sqrt(u/a)                                     //velocity by alternate method

//Result
disp(T,'Period of orbit in Sec')
disp(circum,'Circumference of Orbit in km')
disp(Vs,'Velocity of Satellite in Orbit in km/s')  
disp(v,' Velocity of Satellite in Orbit in km/s(By Alternate Method)')   
