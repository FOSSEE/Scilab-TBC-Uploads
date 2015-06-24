//Example 21.3
//Tool Materials and Tool Life
//Page No. 698
clc;clear;close;

d=0.5;                   //in %
t=(1/d)^(1/0.12);
printf('\nFor High Speed steel tool, increase in tool life is given by: t2 = %g t1',t);
t=(1/d)^(1/0.3);
printf('\nFor Cemented carbide tool, increase in tool life is given by: t2 = %g t1',t);
