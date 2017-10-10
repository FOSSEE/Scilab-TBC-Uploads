// Problem 3.20,Page no.68

clc;clear;
close;

sigma=0.012 //strain
P=150 //KN   //Total Load on the Post
E=1.4*10**4 //N/mm**2 //modulus of elasticity
//b be the width of the post in mm
//2b is the longer dimension of the post in mm

//Calculations

//We know,
//sigma=(P*(A*E)**-1) 

//After substituting values and simplifying, we get
b=((150*10**3)*(0.012*1.4*2*10**4)**-1)**0.5
q=2*b //mm //Longer dimension of post

//Result
printf("Width of post is %.2f mm",b)
printf("\n Longer dimension of post is %.2f mm",q)
