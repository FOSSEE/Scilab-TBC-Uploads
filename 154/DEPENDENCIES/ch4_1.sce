clc
disp("Problem 4.1")
printf("\n")

//From figure 4.2
//All the nodes and branches of the network are marked
//The incidence matrix is written in a manner in which
disp("1 is written if the direction of flow is away from the node")
disp("-1 is written if the direction of flow is towards the node")
disp("0 is written if the branch is not connected to the node")
//Considering columns as branches with 1 to 6 from left to right
//and rows as nodes with 0 to 3 from top to bottom
A=[1 0 -1 -1 0 0
  -1 1  0  0 1 0
   0 -1 1 0  0 1
   0 0 0 1 -1 -1]
disp("The incidence matrix is ")
disp(A,"Aa=")
//It can be inferred from matrix Aa that the sum of elements in any row or a column is ZERO