clc
//to calculate energy of a neutron
//consider nucleus as a cubical box of size 10^-14m
//x=y=z=a=10^-14=l
//for neutron to be in the lowest energy state nx=ny=nz=1
//formula is E=(%pi^2*h^2/8*%pi^2*m)*((nx/lx)^2+(ny/ly)^2+(nz/lz)^2)
h=6.626*10^-34  //planck's constant in Js
m=1.6*10^-27 //mass in kg
l=10^-14 //in m
E=(%pi^2)*(h^2)*3/(4*(%pi^2)*2*m*(1.6*10^-19)*l^2)
disp("lowest energy of a neutron is E="+string(E)+"eV")
