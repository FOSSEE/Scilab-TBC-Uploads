clear
//variable declaration

//A simply supported beam of span 3.0 m has a cross-section 120 mm × 180 mm. If the permissible stress in the material of the beam is 10 N/mm^2

b=(120)           
d=(180)           

//I=(b*d^3)/12,Ymax=d/2

Z=(b*(d**2))/6  
fper=(10)

L=3
Mmax=fper*Z

//Let maximum udl beam can carry be w/metre length 
//In this case, we know that maximum moment occurs at mid span and is equal to Mmax = (wL^2)/8

w=(Mmax*8)/((L**2)*1000000)

printf("\n (i) w= %0.2f  KN/m",w)

// Concentrated load at distance 1 m from the support be P kN.

a=(1)           //distance of point at which load is applied from left,m
b=(2)           //distance of point at which load is applied from right,m

P=(L*Mmax)/(a*b*1000000)

printf("\n (ii) P= %0.2f  KN",P)
