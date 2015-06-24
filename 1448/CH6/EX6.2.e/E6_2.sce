clc
//Initialization of variables
mE=50 //g
mW=50 //g
//calculations
nE=mE/46
nW=mW/18
ntotal=nE+nW
xE=nE/ntotal
xW=1-xE
disp('for the observed xE and xW')
vE=55 //cc/mol
vW=18 //cc/mol
V=nE*vE+nW*vW
//results
printf('\n VOlume of the mixture = %d cm^3 ',V+1)
