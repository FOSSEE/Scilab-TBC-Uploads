clear;
clc;
disp("--------------Example 20.5---------------")
M_bit = 0;
if(M_bit==0) // display the result according to the value of the M bit
    printf("There are no more fragments; this fragment is the last one.");
else
    printf("There are more fragments; this fragment is not the last one.");
end
printf("\nHowever, it cannot be determined if the original packet was fragmented or not. A non-fragmented packet is considered the last fragment.");
