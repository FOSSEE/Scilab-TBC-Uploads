//Chapter 27
clc
//Example 10
//given
h=6.63*10^-34//js
v=5*10^3 //speed of the electron in m/s
m_e=9.11*10^-31 // mass of electron in Kg
p=m_e*v
delta_p=0.00300*p
//Uncertainity principle states delta_x*delta_p >=h/(4*%pi)
delta_x=h/(4*%pi*delta_p)
disp(delta_x,"Uncertainity in position of electron in Meters is ")

