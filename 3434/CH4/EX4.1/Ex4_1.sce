// given data
clc
n=319 // 15th November
Gama=30 // angle in degree 
Beta=45 // angle in degree
phi=18.9  // latitude in degree
solartime=13.5-4*(81.733-72.816)/60 +14.74/60 // in hours
delta=23.45*(sin(360.0*(284.0+n)/365.0)) // in degree
B=(360.0*(n-81)/364)
E=(9.87*sin(2*B)-7.53*cos(B)-15*sin(B))
w=(solartime-12)*15 // hour angle
theta=-%i*acos(((cos(phi)*cos(Beta)+sin(phi)*sin(Beta)*cos(Gama))*cos(delta)*cos(w) + cos(delta)*sin(w)*sin(Beta)*sin(Gama) + sin(delta)*(sin(phi)*cos(Beta)-cos(phi)*sin(Beta)*cos(Gama)))*180/%pi)

printf("the angle is %.2f degrees",theta)


// The answer in the textbook is slightly different due to approximations
