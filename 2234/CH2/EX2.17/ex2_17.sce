clc;
mo=(4*(%pi)*10^-7);  //relative permeability of free space
p=20*10^-2;  //path length in metre
m=20000;  //relative permeability of magnetic material
i=2*10^-3;  //current in Ampere
n=500;  //no of turns
H=n*i;  //calculating A/turn for 20 cm
disp(H,"H for 20 cm in A/turn = ");  //displaying result
a=H/(20*10^-2);  //calculating H per metre
disp(a,"H field per metre in A/metre = ");  //displaying result
B=(m*mo*a);  //calculating flux
disp(B,"Flux in Tesla = ");  //displaying result