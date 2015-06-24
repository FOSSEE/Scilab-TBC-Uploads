disp('the matrix in R2 to rotate a vector by 60 degrees is:')
a=[cos(%pi/3) -sin(%pi/3);sin(%pi/3) cos(%pi/3)]
disp(a)
x=[6;8]
disp(x,'x=')
disp('so the 3X3 matrix for rotation about x is:')
y=[1 0 6;0 1 8;0 0 1]
z=[1 0 -6;0 1 -8;0 0 1]
a=[cos(%pi/3) -sin(%pi/3) 0;sin(%pi/3) cos(%pi/3) 0;0 0 1]
R=y*(a*z)
disp(R)