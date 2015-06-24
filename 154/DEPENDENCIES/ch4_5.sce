clc
disp("Problem 4.5")
printf("\n")

//From figure 4.8
//The fundamental cut-sets are..
disp("C1={1,2,5} L2={2,3,8} L3={1,2,3,4,6} L4={2,3,4,7}")
disp("1 is written for the link if the direction of flow of tree branch is same as that of the link")
disp("-1 is written for the link if the direction of flow of tree branch is opposite as that of the link")
disp("0 is written if the branch or a link is not a part of cut set")
disp("The cut set matrix is")
C=[ 1 -1  0  0  1  0  0  0
    0 -1 -1  0  0  0  0  1 
    1 -1 -1 -1  0  1  0  0
    0 -1 -1 -1  0  0  1  0 ]
    disp(C,"C=")
//The above matrix has branches as columns and the number of cut sets as rows

//Let i=[ i1
//        i2
//        i3
//        i4
//        i5
//        i6 
//        i7
//        i8 ]

//As we need to write the KCL for the circuit 
//KCL=[C]*[i]
//Multiplying [C] with [i] we get the KCL equations
disp("KCL equations are")
disp("i1-i2+i5=0")
disp("-i2-i3+i8=0")
disp("i1-i2-i3-i4+i6=0")
disp("-i2-i3-i4+i7=0")
