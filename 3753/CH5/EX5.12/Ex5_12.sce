//Example 5.12, Page number 5.31

clc;clear;close

// variable declaration
n1=1.5 //unitless
n2=1.49//unitless
a=25 // in m

// Calculations
C_a=asin(n2/n1)           // Critical angle
L=2*a*tan(C_a)      // in m       
N_r=10**6/L         // reflections/m           

// Result
printf("Critical angle = %.2f degrees",(C_a*180/%pi))
printf("\nFiber length covered in one reflection = %.2f micro-m",(L))
printf("\nTotal no.of reflections per meter = %.f",(N_r))
printf("\nSince L=1m, Total dist. travelled by light over one metre of fiber = %.4f m",(1/sin(C_a)))
