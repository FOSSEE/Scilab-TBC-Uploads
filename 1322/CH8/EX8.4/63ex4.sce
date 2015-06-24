
//0.5R1+1.2R2=1.486,4.5R1-2R2=4.67
clear; 
clc;
close;
R2=poly(0,'R2');
R1=(1.486-1.2*R2)/0.5;
R=(4.67+2*R2)/4.5;
P=R1-R;
printf("THE SOLUTION IS: \n");
R2=roots(P)
//SUBSTITUTE IN THE EQUATION 
R1=(1.486-1.2*R2)/0.5


