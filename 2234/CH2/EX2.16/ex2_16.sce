clc;
p=20*10^-2;  //path length in metre
m=20000;  //relative permeability of magnetic material
i=2*10^-3;  //current in Ampere
n=500;  //no of turns
h=n*i;  //calculating A/turn for 20 cm
disp(h,"H for 20 cm in A/turn = ");  //displaying result
a=h/(20*10^-2);  //calculating H per metre
disp(a,"H field per metre in A/metre = ");  //displaying result