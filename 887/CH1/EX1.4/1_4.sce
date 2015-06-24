clc
//ex1.4
d=2.05*10^-3;      //diameter of wire
l=10;      //length of wire
P=1.72*10^-8;      //resistivity of copper
A=%pi*d^2/4;      //area of wire
R=P*l/A;      //resistance of the copper wire
printf(" All the values in the textbook are approximated, hence the values in this code differ from those of textbook")
disp(R,'Resistance of copper wire in ohms')
