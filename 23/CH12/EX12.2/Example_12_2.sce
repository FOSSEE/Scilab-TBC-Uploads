clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 12.2
//Caption : Program to Find the Excess Enthalpy as function of x1

//H_E=x1x2(40x1+20x2)   (A)
//Find H1_E and H2_E

//H1_E=H_E+((1-x1)*(dH_E/dx1))  let d=dH_E/dx1

//H2_E=H_E-(x1*(dH_E/dx1))  let d=dH_E/dx1

//Replacing x2=1-x1 in (A)

H_E=poly([0 20 0 -20],'x1','c');
d=poly([20 0 -60],'x1','c');
H1_E=poly([20 0 -60 40],'x1','c');
H2_E=poly([0 0 0 40],'x1','c');

disp(H1_E,'Expression For H1_E(x1) is ')
disp(H2_E,'Expression For H2_E(x1) is ')


//End