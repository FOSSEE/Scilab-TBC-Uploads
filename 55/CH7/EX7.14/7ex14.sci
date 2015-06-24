disp("a box contains 12 items of which three are defective")
disp("A sample of three items is selected from the box")
r=factorial(9)/(factorial(9-3)*factorial(3))  //number of samples of size 3 with no defective items
t=220;                                        //number of different samples of size 3 i.e the number of elements in the sample space
P0=r/t                                       //probability of getting no defective item
r1=3*(factorial(9)/(factorial(9-2)*factorial(2)))       //number of samples of size 3 getting 1 defective item
P1=r1/t                                                 //probability of getting 1 defective item
r2=9*(factorial(3)/(factorial(3-2)*factorial(2)))       //number of samples of size 3 getting 2 defective item
P2=r2/t                                                //probability of getting 2 defective item
r3=1;                      //number of samples of size 3 getting 3 defective item
P3=r3/t                   //probability of getting 3 defective item
x=[0,1,2,3];
p=[P0,P1,P2,P3];
D=[0,1,2,3;P0,P1,P2,P3];  
disp(D,'distribution table for random variable X the upper row being values of X')