//Ex3_13
clc
e = -1.6*10^-19
m = 9.1*10^-31
Va = 400
v = (abs(2*e*Va/m))^.5
disp("e = "+string(e)+"C")//electron charge
disp("m = "+string(m)+"Kg")//mass of electron
disp("Va = "+string(Va)+"V")//anode voltage
disp("v = (2*e*Va/m)^.5 = "+string(v)+"m/s")//formula used to calculate velocity of electrons
//as electron traces a circular path, radius of circular path
H = 47.75
micro_not = 4*%pi*10^-7
B = H*micro_not
disp("B = "+string(B)+"Wb/m-sq")
r = (v/(e/m)/B)
disp("r = (v/(e/m))/B = "+string(r)+"m")

//  NOTE : Question is incompletely solved in the textbook
