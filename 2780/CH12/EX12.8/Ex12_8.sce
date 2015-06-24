//in page no.340,numbering is done wrongly,it should be like ex-8,ex-9,ex-10,ex-11,ex-12,ex-13,ex-14
clc
//to calculate average values of intensities of electric and magnetic fields of radiation
//energy of lamp=1000 J/s
//area illuminated =4*%pi*r^2=16*%pi m^2
//energy radiated per unit area per second =1000/16*%pi
//from poynting theorem |s|=|E*H|=E*H           eq(1)
s=1000/(16*%pi)
muo=4*%pi*10^-7             //permeability of free space
epsilon0=8.85*10^-12              //permittivity in free space
//E/H=sqrt(muo/epsilon0)        eq(2)
//from eq(1) and eq(2),we get
E=sqrt(s*sqrt(muo/epsilon0))
H=s/E
disp("average value of intensity of electric fields of radiation is E="+string(E)+"V/m")
disp("average value of intensity of magnetic fields of radiation is H="+string(H)+"ampere-turn/m")
//answer is given wrong in the book E=48.87 V/m,solution of magnetic fields is not given in the book .
