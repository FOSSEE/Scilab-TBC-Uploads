// Find degrees of freedom of a system of two components
clc
c = 2 // number of components
printf("\n Example 7.1")
for n = 1:4
    p = (c-1) +2 // Total variables
    f = c-n+2 // degree of freedom
    printf("\n\n Degree of freedom for two components when \n number of phases is %d is %d",n,f)
end
