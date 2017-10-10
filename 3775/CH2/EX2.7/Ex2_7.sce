//Ex 2.7 page 71

clc;
clear;
close;

VS=4;// kV
IS=800;// A

VD=800;// V
ID=200;// A
dr=20/100;// de-rating factor
// for series connection
ns = ceil(VS*1000/(1-dr)/(VD)) ; // no. of series string
// for parallel connection
np = round(IS/(1-dr)/(ID)) ; // no. of parallel string
printf('\n no. of series connection = %d',ns)
printf('\n no. of parallel connection = %d',np)

