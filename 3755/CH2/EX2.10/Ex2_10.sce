clear
//
//
//

//Variable declaration 
h1=0;       //intercept on X axis
k1=1;      //intercept on Y axis
l1=1;      //intercept on Z-axis
h2=1;       //intercept on X axis
k2=0;      //intercept on Y axis
l2=1;      //intercept on Z-axis
h3=1;       //intercept on X axis
k3=1;      //intercept on Y axis
l3=2;      //intercept on Z-axis

//Calculations
d1=h1^2+k1^2+l1^2;       //interplanar spacing in 1st plane(angstrom)
d2=h2^2+k2^2+l2^2;       //interplanar spacing in 2nd plane(angstrom)
d3=h3^2+k3^2+l3^2;       //interplanar spacing in 3rd plane(angstrom)

//Result
printf("\n interplanar spacing in 1st plane is a/sqrt( %0.3f ) angstrom",d1)
printf("\n interplanar spacing in 2nd plane is a/sqrt( %0.3f ) angstrom",d2)
printf("\n interplanar spacing in 3rd plane is a/sqrt( %0.3f ) angstrom",d3)
