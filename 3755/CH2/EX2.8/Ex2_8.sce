clear
//
//
//

//Variable declaration    
a=1.2;
b=1.8;
c=2.0;       //crystal primitives
x=2;
y=3;
z=1;         //intercepts 
h=1.2;       //intercept on X axis

//Calculations
h1=a/x;
k1=b/y;
l1=c/z;
k=h*h1/k1;      //intercept on Y axis
l=h*l1/h1;      //intercept on Z-axis

//Result
printf("\n intercept on Y axis is %0.3f angstrom",k)
printf("\n intercept on Z axis is %0.3f angstrom",l)
