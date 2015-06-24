clc
//to calculate uncertainity in position
m=9.11*10^-31 //mass of electron in kg
delv=40 //uncertainity in velocity in m/s
h=6.6*10^-34 //plank's constant 
delx=h/(2*%pi*m*delv)
disp("uncertainity in the position of the electron is delx="+string(delx)+"m")
