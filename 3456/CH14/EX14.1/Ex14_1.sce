//Example 14.1
//Stress Corrosion Cracking
//Page No. 494
clc;clear;close;

cg=10;            //in mm
cg=cg/1000;         //conversion to m
gr=10^-8;         //m/s
l=cg/(gr*3600*24);     
printf('\nEstimated Life = %g days',l);
K_l_SCC=10;                 //in MN m^(-3/2)
a_sigma2=K_l_SCC^2/(1.21*%pi);
s=[500,300,100];
printf('\n\n\n---------------------------------\nStress, MPa\tCrack Length, mm\n---------------------------------\n');
for i=1:3
    printf('\t%g\t\t%g\n',s(i),a_sigma2*1000/s(i)^2);
end
printf('---------------------------------');
printf('\n\n\n\nNote: Calculation errors in book');
