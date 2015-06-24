clc;clear;
//Example 8.14

//given data
D1=5.4;
D2=7.6;
D3=9.4;//angles in degree

//calcualtion
d1=1/(2*sind(D1));
d2=1/(2*sind(D2));
d3=1/(2*sind(D3));
m=min(d1,d2,d3);
d1=d1/m;
d2=d2/m;
d3=d3/m;
disp(d1,d2,d3,'d1:d2:d3 =')