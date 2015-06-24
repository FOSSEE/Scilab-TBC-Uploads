// calculating guarantee value of capacitance
clc;
As = 1;
Er=0.05;
Aau=As*(1+Er);
disp(Aau,'Upper limit(micro F)=');
Aal=As*(1-Er);
disp(Aal,'Lower limit(micro F)=');