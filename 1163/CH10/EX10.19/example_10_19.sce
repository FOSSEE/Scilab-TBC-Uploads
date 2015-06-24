clear;
clc;
disp("--------------Example 10.19---------------")
// set of numbers sent
n1=7;
n2=11;
n3=12;
n4=0;
n5=6;
n_sum=n1+n2+n3+n4+n5; // find the sum 
checksum= - n_sum; // formula
printf("\nThe job of the receiver becomes easier if the negative (complement) of the sum, called the checksum is sent along with the numbers.\nIn this case, we send (%d, %d, %d, %d, %d, %d). The receiver can add all the numbers received (including the checksum).\nIf the result is 0, it assumes no error; otherwise, there is an error.",n1,n2,n3,n4,n5,checksum); // display result
