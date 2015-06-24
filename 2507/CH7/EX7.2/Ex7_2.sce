clc
clear
printf("Example 7.2 | Page Number 178 \n\n");
//Evaluate validity of claim
//Given Data
nr = 0.7 //maximum efficiency
W = 80 //kJ //Work
Q1 = 100 //kJ //heat transfered
//Solution
nx = W/Q1 //claimed efficiency
if nx>nr then
    printf("Engine X is not a viable proposition because the claimed efficiency %.2f is greater than maximum efficiency %.2f",nx,nr)
else
    printf("Engine X is a viable proposition because the claimed efficiency %.2f is less than maximum efficiency %.2f",nx,nr)   
end
