//Ex 2.6 page 70

clc;
clear;
close;

VS=3;// kV
IS=750;// A

VD=800;// V
ID=175;// A
dr=30/100;// de-rating factor
IB=8;//mA
delQ=30;// u Coulomb
// dr = 1-IS/np*ID
np = round(IS/(1-dr)/(ID)) ; // no. of parallel string
ns = round(VS*1000/(1-dr)/(VD)) ; // no. of series string
R=(ns*VD-VS*1000)/(ns-1)/(IB/1000)/1000;//kohm
C=(ns-1)*delQ*10**-6/(ns*VD-VS*1000)
printf('Value of R = %.2f kohm',R)
printf('\n Value of C = %.2e F',C)
