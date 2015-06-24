//Example 2.2
//State of Stress in three dimensions
//Page No. 29
clc;clear;close;

s=poly(0,'s')
A=[s-0,-240,0;-240,s-200,0;0,0,s+280];         //in Mpa
p=determ(A);
X=roots(p);
for i=1:3
    printf('\nsigma%i = %g MPa',i,X(i));
end
printf('\n\nLogic: The matrix provided in the book is a state of stress of a body which includes a combination of normal and shear stresses acting in a triaxial direction. So the determinant of the matrix results in the cubic equation in ""sigma"" which when solved gives the principal stresses');
