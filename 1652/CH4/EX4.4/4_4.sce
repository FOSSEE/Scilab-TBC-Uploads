clc
//initialization of variables
l1=2886 //cm^-1
l2=5668 //cm^-1
//calculations
wave=2*l1-l2 
wave2= wave+l1
x=wave/(2*wave2)
//results
printf("anharmonicity constant = %.4f ",x)
