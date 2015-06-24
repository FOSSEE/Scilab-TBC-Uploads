clear;
clc;
disp("--------------Example 10.4---------------")
//words
x1=[0 0 0];
y1=[0 1 1];
x2=[1 0 1 0 1];
y2=[1 1 1 1 0];
// formula to find Hamming distance 'd'
d1=bitxor(x1,y1);
d2=bitxor(x2,y2);
function [count]= num_of_ones (d)// function to find the number of ones in a binary number
    count=0; 
    for i=1:length(d)
        if(d(i)== 1)
            count = count+1; // number of one's 
        end
    end
endfunction
d=num_of_ones(d1); // calling the function
printf("\nThe Hamming distance d(OOO, 011) is %d.\n",d); // display result
d=num_of_ones(d2); // calling the function
printf("\nThe Hamming distance d(10101, 11110) is %d.\n",d); // display result


