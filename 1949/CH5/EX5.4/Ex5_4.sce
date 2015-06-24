//Chapter-5,Example 5_4,Page 5-24
clc()

//Given Values:
V=100            //potential difference
d=2.15*10^-10    //lattice spacing

//Calculations:
lam=12.26*10^-10/(sqrt(V))          //wavelength associated with electron in meter

//using bragg's law for first order  lam=2d sin(theta)
theta=asin(lam/(2*d))*180/%pi       //glancing angle in degrees
printf('Glancing angle at which first reflection occurs is =%.2f degrees \n',theta)
