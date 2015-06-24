clc
disp("Problem 4.3")
printf("\n")

//From figure 4.2
disp("The reduced incidence matrix is ")
A=[-1  1 0 0  1  0
    0 -1 1 0  0  1
    0  0 0 1 -1 -1]
    disp(A,"A=")
AT=[ -1  0  0
      1 -1  0
      0  1  0
      0  0  1 
      1  0 -1
      0  1 -1 ]
      disp(AT,"AT=")
//Let e be the node to datum voltages
//Let e=[ e1
//        e2
//        e3 ]
//Multiplying [AT] with [e] we get the node voltages as
disp("Node to datum voltages are")
disp("v1=-e1")
disp("v2=e1-e2")
disp("v3=e2")
disp("v4=e3")
disp("v5=e1-e3")
disp("v6=e2-e3")

