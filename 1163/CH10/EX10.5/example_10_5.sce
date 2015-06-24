clear;
clc;
disp("--------------Example 10.5---------------")
//words
x1=[0 0 0];
x2=[0 1 1];
x3=[1 0 1];
x4=[1 1 0];
//function to find Hamming distance
function [d]=hamming_distance(x,y)
    xd=bitxor(x,y);
    d=num_of_ones(xd);
endfunction
function [count]= num_of_ones (d)// function to find the number of ones in a binary number
    count=0; 
    for i=1:length(d)
        if(d(i)== 1)
            count = count+1; // number of ones
        end
    end
endfunction
d1=hamming_distance(x1,x2);
printf("\nThe Hamming distance d(OOO, 011) is %d.\n",d1); // display result
d2=hamming_distance(x1,x3);
printf("\nThe Hamming distance d(OOO, 101) is %d.\n",d2); // display result
d3=hamming_distance(x1,x4);
printf("\nThe Hamming distance d(OOO, 110) is %d.\n",d3); // display result
d4=hamming_distance(x2,x3);
printf("\nThe Hamming distance d(O11, 101) is %d.\n",d4); // display result
d5=hamming_distance(x2,x4);
printf("\nThe Hamming distance d(O11, 110) is %d.\n",d5); // display result
d6=hamming_distance(x3,x4);
printf("\nThe Hamming distance d(101, 110) is %d.\n",d6); // display result
dmin=min(d1,d2,d3,d4,d5,d6);
printf("\nThe minimum Hamming distance dmin is %d.",dmin); // display result
