clc//
//
//

//Variable declaration
h1=1;
k1=0;
l1=0;
h2=1;
k2=1;
l2=0;
h3=1;
k3=1;
l3=1;

//Calculation
d100=1/sqrt(h1^2+k1^2+l1^2);    //interplanar spacing for (110)
d110=1/sqrt(h2^2+k2^2+l2^2);    //interplanar spacing for (110)
d111=1/sqrt(h3^2+k3^2+l3^2);    //interplanar spacing for (111)

//Result
printf("\n seperation between successive lattice planes is %0.3f : %0.2f : %0.2f ",d100,d110,d111)
