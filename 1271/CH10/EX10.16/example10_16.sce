clc 
// Given that
n = 20000 // flux lines entering in given volume in Vm
n_ = 45000 // flux lines entering out from given volume in Vm
e0 = 8.85e-12 // permittivity of space
// Sample Problem 16 on page no. 10.42
printf("\n # PROBLEM 16 # \n")
fi = n_ - n
q = e0 * fi
printf("Standard formula used \n fi= q/e_. \n")
printf("The total charge enclosed by closed surface is %e C.",q)
