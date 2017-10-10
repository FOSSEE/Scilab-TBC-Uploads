
//Variable declaration
lamda=0.071*10**-9;     //wavelength(m)
a=0.28*10**-9;    //lattice constant(m)
h=1;
k=1;
l=0;
n=2;    //order of diffraction

//Calculation
d=a/sqrt(h**2+k**2+l**2);
x=n*lamda/(2*d);     
theta=asin(x);     //angle(radian)
theta=theta*180/%pi;    //glancing angle(degrees)

//Result
printf('glancing angle is %0.3f   degrees  \n',int(theta))