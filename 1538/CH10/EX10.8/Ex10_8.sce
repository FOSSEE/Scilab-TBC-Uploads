//example-10.8
//page no-330
//given
//ASTM number
n=12
//as we know that
N=2^(n-1) 
//1 square inch=645 mm^2
//so grain diameter for ASTM number 12 will be
d=1/sqrt((N/645)*10^4)  //mm
printf ("the grain diameter of ASTM number 12 is %f mm",d)
