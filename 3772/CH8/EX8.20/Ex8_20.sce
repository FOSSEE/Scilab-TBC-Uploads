// Problem 8.20,Page no.219

clc;clear;
close;

alpha=30 //degree 
E=200*10**9 //Pa
G=80*10**9 //pa 

//Calculations

//For alpha=30 //Degree
//dell=64*W*R**3*n*sec(alpha)*(d**4)**-1*(cos(alpha)**2*G**-1+2*sin(alpha)**2*E**-1)
//Now substituting values in above equation we get

//dell_1=64*W*R**3*n*(d**4)**-1*1330*(10**9)**-1  (equation 1)

//For alpha=0 //Degree
//dell=64*W*R**3*n*sec(alpha)*(d**4)**-1*(cos(alpha)**2*G**-1+2*sin(alpha)**2*E**-1)
//Now substituting values in above equation we get

//dell_2=64*W*R**3*n*(d**4)**-1*1250*(10**9)**-1  (equation 2)

//subtracting equation 1 and equation 2 we get
//Let dell_1-dell_2=X
//X=64*W*R**3*n*(d**4)**-1*80*(10**9)

//Let Y=X*dell_1**-1*100
Y=80*1330**-1*100 //% under estimation of axial extension

//Result
printf("%% under estimation of axial extension is %.2f",Y)
