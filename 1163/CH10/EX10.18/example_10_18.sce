clear;
clc;
disp("--------------Example 10.18---------------")
// set of numbers sent
n1=7;
n2=11;
n3=12;
n4=0;
n5=6;
n_sum=n1+n2+n3+n4+n5; // find the sum 
printf("\nThe set of numbers is (%d, %d, %d, %d, %d). The sender sends (%d, %d, %d, %d, %d, %d), where %d is the sum of the original numbers.\nThe receiver adds the five numbers and compares the result with the sum.\nIf the two are the same, the receiver assumes no error, accepts the five numbers, and discards the sum.\nOtherwise, there is an error somewhere and the data are not accepted.",n1,n2,n3,n4,n5,n1,n2,n3,n4,n5,n_sum,n_sum); // display the result 
