clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 5.1
//Caption : Program To Find the Heat discarded to the River

//Given Values
Tc=295;//K
Th=585;//K
W=800000;//KW
n_max=1-(Tc/Th);
n=approx(0.7*n_max,3)
Qc=approx(((1-n)/n)*W,-2);
disp('KW',Qc,'Heat required');

//End