//Example 5.1
//Forces Between Dislocations
//Page No. 166
clc;clear;close;

G=40;               //in GPa
G=G*10^9;          //conversion to N/m^2
b=2.5;             //in angstrong
b=b*10^-10;          //conversion to m
r=1200;              //in angstrong
r=r*10^-10;          //conversion to m
l=0.04;               //in mm
l=l*10^-3;            //conversion to m
F=G*b^2/(2*%pi*r);
Ft=F*l;
printf('The Total force on the dislocation is = %g N',Ft);
