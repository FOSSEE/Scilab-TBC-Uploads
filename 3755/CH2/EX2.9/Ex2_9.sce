clear
//
//
//

//Variable declaration    
r=1.246;     //atomic radius(angstrom)
h1=2;       //intercept on X axis
k1=0;      //intercept on Y axis
l1=0;      //intercept on Z-axis
h2=2;       //intercept on X axis
k2=2;      //intercept on Y axis
l2=0;      //intercept on Z-axis
h3=1;       //intercept on X axis
k3=1;      //intercept on Y axis
l3=1;      //intercept on Z-axis

//Calculations
a=2*sqrt(2)*r;      //lattice constant
d1=a/sqrt(h1^2+k1^2+l1^2);       //interplanar spacing in 1st plane(angstrom)
d2=a/sqrt(h2^2+k2^2+l2^2);       //interplanar spacing in 2nd plane(angstrom)
d3=a/sqrt(h3^2+k3^2+l3^2);       //interplanar spacing in 3rd plane(angstrom)

//Result
printf("\n interplanar spacing in 1st plane is %0.3f angstrom",d1)
printf("\n interplanar spacing in 2nd plane is %0.3f angstrom",d2)
printf("\n interplanar spacing in 3rd plane is %0.4f angstrom",d3)
