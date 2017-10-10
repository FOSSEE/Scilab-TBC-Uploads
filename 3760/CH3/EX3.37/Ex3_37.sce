clc;
n1=0.95; // efficiency of transformer 1
lo=((1/n1)-1); // fraction of output lost
d=2; // Linear dimension of transformer B is two times the Linear dimension of transformer A
nb=(1/(1+((1*lo)/d)))*100; 
printf('Full load efficiency of transformer B is %f percent',nb); 
