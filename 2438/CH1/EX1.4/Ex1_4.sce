// chapter 1 example 4


clc;
clear;

//intercepts given are 3a,4b,2c
//from the law of rational indices
//3a:4b:2c=a/h:b/k:c/l

// Variable Declaration
 h1          = 3;               //miller indices
 k1          = 4;               //miller indices
 l1          = 2;               //miller indices
 
 //calculation
v= int32([h1 k1 l1]);
lc=int32(lcm(v));
h = lc*1/h1;
k = lc*1/k1;
l= lc*1/l1;

 //result
 mprintf('miller indices = %d %d %d',h,k,l);
 





