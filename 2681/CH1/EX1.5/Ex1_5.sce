//the electric field at Q1 needed to be determined.
//given
clc
Q1=1d-9//at (-1,1,-3)
Q2=5d-9//at (3,1,0)
epsilon0=8.85D-12//the values may differ as i have used the exact value of permitivity
R=[-1 1 -3]-[3 1 0]//
r=norm(R)//magnitude of the vector r
ar=R/r//unit vector
E=(Q1/(4*%pi*epsilon0*(r^2)))*ar
E=round(E*10000)/10000///rounding off decimals
disp(E,'THE electric field at Q1 is given as:')//both vectors are in ax and az directions respectively
//ERROR in the book
