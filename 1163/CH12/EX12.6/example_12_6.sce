clear;
clc;
disp("--------------Example 12.6---------------")
// use the rows of W2 and W4 in the solution
W2=[1 1;1 -1];
W4=[1 1 1 1;1 -1 1 -1;1 1 -1 -1;1 -1 -1 1];
//a. Two stations
C1= W2(1,:); //select 1st row of W2
C2= W2(2,:); // select 2nd row of W2
// display result
disp("a)The chips for a two-station network are ");
disp(C1)
disp("and")
disp(C2)

//b. Four stations
C1= W4(1,:); // select 1st row of W4
C2= W4(2,:); // select 2nd row of W4
C3= W4(3,:); // select 3rd row of W4
C4= W4(4,:); // select 4th row of W4
// display result
disp("b)The chips for a four-station network are ");
disp(C1)
printf(",")
disp(C2)
printf(",")
disp(C3)
printf("and")
disp(C4)

