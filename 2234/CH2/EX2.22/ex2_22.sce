clc;
v=7.5*10^-5;  //volume in metre cube
b=1;  //flux in tesla
mo=4*(%pi)*10^-7;  //permeability of free space
m=20000;  //permeability of material
h=b/(m*mo);  //calculating field intensity
e=(1/2)*b*h*v;  //calculating energy
disp(e,"Energy in Joule = ");  //displaying energy
disp(h,"Field in the gap = ");  //displaying field intensity
disp(h*10^-2,"Current per metre = Therefore in the gap of 0.001 m current required in mA = ");  //displaying result