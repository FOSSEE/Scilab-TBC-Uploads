clc
disp("Problem 4.4")
printf("\n")

//From figure 4.7
//Let us consider a tree with 5,6,7,8 as tree branches 
//Correspondingly links be 1,2,3,4
//By adding links one after other Loops can be formed 
//The fundamental loops are..
disp("L1={1,5,6} L2={2,5,6,7,8} L3={3,6,7,8} L4={4,6,7}")
disp("1 is written if the direction of flow is along the direction of loop")
disp("-1 is written if the direction of flow is opposite to the direction of loop")
disp("0 is written if the branch is not a part of loop")
disp("The loop incidence matrix is")
B=[1 0 0 0 -1 1 0 0
   0 1 0 0 1 -1 1 1 
   0 0 1 0 0 -1 1 1
   0 0 0 1 0 -1 1 0]
   disp(B,"B=")
//The above matrix has branches as columns and the number of loops as rows
//As we need to find branch currents(8 in number)in terms of loop currents(4 in number)
//Let i=[ i1                    also iL=[ iL1
//        i2                              iL2
//        i3                              iL3
//        i4                              iL4 ]
//        i5
//        i6 
//        i7
//        i8]


//We know i=BT*iL
//i=[ i1             [1  0  0  0      iL=[ iL1
//    i2              0  1  0  0           iL2
//    i3              0  0  1  0    *      iL3
//    i4        =     0  0  0  1           iL4 ]
//    i5             -1  1  0  0
//    i6             -1 -1 -1 -1
//    i7              0  1  1  1
//    i8]             0  1  1  0 ]

disp("The branch currents are")
disp("i1=iL1")
disp("i2=iL2")
disp("i3=iL3")
disp("i4=iL4")
disp("i5=-iL1+iL2")
disp("i6=iL1-iL2-iL3-iL4")
disp("i7=iL2+iL3+iL4")
disp("i8=iL2+iL3")









