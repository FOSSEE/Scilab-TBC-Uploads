clear;
clc;
disp("--------------Example 19.10---------------")
// address :- 190.100.0.0/16 i.e 65,536 addresses
num_of_ISP_addresses=65536; //total number of addresses 
printf('\n');
function [total]= addresses (num_of_customers,num_of_addresses) //function to find total number of addresses allocated to a group
    total=num_of_customers*num_of_addresses; //formula to calculate total number of addresses
    bits=log2(num_of_customers);
    n=32-bits;
     printf("Number of bits needed to define each host = %d",bits); //display results
    printf("\nThe prefix length = %d",n);
    endfunction
//group 1
g1=addresses(64,256); //calling fuction
printf("\nThe total number of addresses alloted to Group 1 = %d\n\n",g1);
//group 2
g2=addresses(128,128); //calling function
printf("\nThe total number of addresses alloted to Group 2 = %d\n\n",g2);
//group 3
g3=addresses(128,64); //calling function
printf("\nThe total number of addresses alloted to Group 3 = %d\n\n",g3);
num_allocated=g1+g2+g3; //total number of addresses allocated 
num_remaining_addresses=num_of_ISP_addresses-num_allocated; // formula to calculate number of remaining addresses
printf("\nThe total number of addresses granted to the ISP = %d",num_of_ISP_addresses); 
printf("\n\nThe total number of addresses allocated by the ISP = %d",num_allocated);
printf("\n\nThe number of addresses remaining = %d",num_remaining_addresses);  //display result
