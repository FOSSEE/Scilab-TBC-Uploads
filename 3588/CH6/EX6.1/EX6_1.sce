//Clearing console
clc
clear

s = poly(0,"s")

//Calculating Constants in interpolation functions
c1 = 1/((-1/3)*(-2/3)*(-1))
c2 = 1/((1/3)*(-1/3)*(-2/3))
c3 = 1/((2/3)*(1/3)*(-1/3))
c4 = 1/((1)*(2/3)*(1/3)) 

//interpolation functions
N1 = c1*(s-1/3)*(s-2/3)*(s-1)
N2 = c2*(s)*(s-2/3)*(s-1)
N3 = c3*(s)*(s-1/3)*(s-1)
N4 = c4*(s)*(s-1/3)*(s-2/3)

//Printing Results
printf('\nInterpolation Functions\n')
printf('N1(x) =')
disp(N1)
printf('N2(x) =')
disp(N2)
printf('N3(x) =')
disp(N3)
printf('N4(x) =')
disp(N4)
