clear
//
//
//

//Variable declaration
h=1
k=1
l=1                     //miller indices
r=1.278*10**-10         //radius(m)

//Calculation
a=4*r/sqrt(2)       
d111=a/sqrt(h**2+k**2+l**2)          //interplanar spacing(m)

//Result
printf("\n interplanar spacing is %0.2f  *10**-10 m",d111*10**10)
