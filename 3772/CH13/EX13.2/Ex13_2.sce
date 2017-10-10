// Problem no 13.2,Page No.301

clc;clear;
close;
//W=10*w //KN/m //u.d.l
sigma=805*10**6 //Pa  //Bending stress
Tou=0.85*10**6 //Pa //Shear stress

//Calculations

//M=W*L**2*10**-4*8**-1 //Max B.M
//F=W*L*10**-2*2**-1 //Max S.F
//y=h*2**-1 //depth
//A-b*h //Area of c/s

//Now using relation we get
//sigma=M*h*(2*I)**-1   //Bending stress

//AFter substituitng values we get
//805*10**6=w*l**2*h*(16*10**5*I)**-1   //Equation 1

//Again using the relation we get 
//tou=F*A*y_bar*(I*b)**-1  //shear atress

//AFter substituitng values we get
//0.85*10**6=w*L*h**2*(16*10**5*I)**-1  //Equation 2

//Dividing equation 1 & 2 we get
//L*h**-1=10
//Let L*h**-1=Z
z=10

//Result
printf("The Ratio of span to depth ratio is %.2f",z)
