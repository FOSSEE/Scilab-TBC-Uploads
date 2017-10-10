clc//
//
//

//Variable declaration
r=0.1278;     //atomic radius(m)
h1=1;
k1=1;
l1=0;
h2=2;
k2=1;
l2=2;

//Calculation
a=(4*r/sqrt(2));

d110=a/sqrt(h1^2+k1^2+l1^2);    //interplanar spacing for (110)(nm)
d212=a/sqrt(h2^2+k2^2+l2^2);    //interplanar spacing for (212)(nm)

//Result
printf("\n interplanar spacing for (110) is %0.4f nm",d110)
printf("\n interplanar spacing for (212) is %0.3f nm",d212)
