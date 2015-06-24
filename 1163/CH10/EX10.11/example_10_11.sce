clear;
clc;
disp("--------------Example 10.11---------------")
function [count]= num_of_ones (d)// function to find the number of ones in a binary number
    count=0; 
    for i=1:length(d)
        if(d(i)== 1)
            count = count+1; // number of ones
        end
    end
endfunction
//1)Table 10.1
c1=[0 0 0];
c2=[0 1 1];
c3=[1 0 1];
c4=[1 1 0];
o2=num_of_ones(c2);
o3=num_of_ones(c3);
o4=num_of_ones(c4);
dmin=min(o2,o3,o4); //The minimum Hamming distance is the number of 1s in the nonzero valid codeword with the smallest number of 1s.
printf("\nIn the first code (Table 10.1), the numbers of 1s in the nonzero codewords are %d,%d,and %d.So the minimum Hamming distance is dmin = %d.",o2,o3,o4,dmin); //display result

// 2) Table 10.2
c1=[0 0 0 0 0];
c2=[0 1 0 1 1];
c3=[1 0 1 0 1];
c4=[1 1 1 1 0];
o2=num_of_ones(c2);
o3=num_of_ones(c3);
o4=num_of_ones(c4);
dmin=min(o2,o3,o4); //The minimum Hamming distance is the number of 1s in the nonzero valid codeword with the smallest number of 1s.
printf("\nIn the second code (Table 10.2), the numbers of 1s in the nonzero codewords are %d,%d,and %d.So the minimum Hamming distance is dmin = %d.",o2,o3,o4,dmin); // display result
