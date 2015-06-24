clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 11.4
//Caption : Program To Find the Expression For Enthalpies

//H=400x1 + 600x2 + x1x2(40x1 + 20x2)  Given

//Substituting x2=1-x1

H=poly([600 -180 0 -20],'x1','c')     //(A)

//K=dH/dx1

K=poly([-180 0 -60],'x1','c')

//Using Eqn 11.15  H1=H+x2*K

//substituting x2=1-x1

H1=poly([420 0 -60 40],'x1','c')     //(B)

//Similarly for H2

H2=poly([600 0 0 40],'x1','c')       //(C)

//Now to calculate H1_inf and H2_inf 

//x1=0 in (B)
H1_inf=420;//[J/mol]

//x2=0 in (C) i.e. x1=1
H2_inf=640;//[J/mol]

disp(H1,'H1 = ');
disp(H2,'H2 = ');
disp('J/mol',H1_inf,'H1_inf = ')
disp('J/mol',H2_inf,'H2_inf = ')

//End