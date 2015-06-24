//Given that
n1 = 1.6
n2 = 1.00
R  = -3.0  //in mm
i = -5.0  //in mm

//Sample Problem 35-2
printf("**Sample Problem 35-2**\n")
//n1/d + n2/i = (n2-n1)/R
d = n1/(- n2/i + (n2-n1)/R)
printf("The real depth of the mosquito is %1.2fmm", d)