//example 4.2
clc; funcprot(0);
FS=3;
cu=72;
q=18;
B=1;
H=0.25;
qu=5.14*(1+(0.5*B/H-0.707)/5.14)*cu+q;
qall=qu/FS;
disp(qall,"bearing capacity of soil in kN/m^2");

