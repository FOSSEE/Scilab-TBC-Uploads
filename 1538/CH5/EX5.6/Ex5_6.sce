//example-5.6
//page no-158
//given
//ASTM number
n=12
//as we know that the number of grains N observed on photomicrograph is given by
N=2^(n-1)
//as we know that grain size diameter is given by
d=1/sqrt((N/645)*10^4)  //mm  because 1 square inch=645 mm^2
printf ("the grain diameter for an ASTM number 12 is %f mm",d)
