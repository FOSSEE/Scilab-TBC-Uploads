clc 
// Given that
n = 2000 // flux lines enter in given volume  in Vm
n_ = 4000 // flux lines diverge from given volume in Vm
e0 = 8.85e-12 // permittivity of space
// Sample Problem 15 on page no. 10.42
printf("\n # PROBLEM 15 # \n")
fi = n_ - n
q = e0 * fi
printf("Standard formula used \n fi = q/e_")
disp(q,' The total charge within volume(in C) = ')
