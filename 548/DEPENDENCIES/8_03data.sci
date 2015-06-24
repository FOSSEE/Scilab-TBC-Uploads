Ve=13000;//velocity of solid iron sphere entering earth's atmosphere(m/s)
theta=15*%pi/180 //angle at which sphere is entering
r=0.5;//sphere radius(m)
Cd=1;//drag coefficient for a sphere at hypersonic speed
Ds=6963;//density of sphere(Kg/m^3)
g=9.8;//gravitational constant(m/s^2)
R=287;//gas constant for air(J/Kg.K)
Do=1.225;//density at sea level(Kg/m^3)
T=288;//assuming a constant temperature(k) for exponential universe
B=4*r*Ds/(3*Cd)  //ballistic parameter(m/CD*S=4*r*Ds/(3*Cd))
Z=.000118
D=B*Z*sin(theta) //density at corresponding altitude of maximum deceleration