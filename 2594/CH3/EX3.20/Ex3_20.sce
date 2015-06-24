clc
Nd=5*10^16
disp("Nd = "+string(Nd)+" /cm^3") //initializing value of donor concentration.
A=50*10^-8
disp("A= "+string(A)+" cm^2") //initializing value of area.
l=0.2
disp("l = "+string(l)+" /cm") //initializing value of length. 
E=10
disp("E = "+string(E)+" V") //initializing value of electric field. 
up=1100
disp("un = "+string(up)+" cm^2/s") //initializing value of mobility. 
p=5*10^16
disp("p= "+string(p)+" /cm^-3") //initializing value of impurity concentration.
e=1.6*10^-19
disp("e = "+string(e)+" columb") //initializing value of charge of electron.
I=(p*up*e*E*A)/l
disp("Current through the bar,I=(p*up*e*E*A)/l)= "+string(I)+"A")//calculation
