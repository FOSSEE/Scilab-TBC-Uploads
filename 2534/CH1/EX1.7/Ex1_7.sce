//EX1.7
clc
Ex=3;Ey=4;Ez=2//electric field
e=1.6*10^-19 //electorn charge
disp("E = 3ax + 4ay + 2az k V/m")
disp("e = 1.6*10^-19 C")
disp("F=eE = "+string(Ex*e*1000)+"ax + "+string(Ey*e*1000)+"ay + "+string(Ez*e*1000)+"az N") //force
