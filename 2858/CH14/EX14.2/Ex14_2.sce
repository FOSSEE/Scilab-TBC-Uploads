//example 14.2
clc; funcprot(0);
Tv=0.36;
sigmap=115;
Uv=sqrt(4*Tv/%pi)*100;
disp(Uv,"Uv in %");
//from table 
k=0.12; //constant
sf=k*sigmap;
disp(sf,"deltasigmaf in kN/m^2");

