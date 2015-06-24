//===========================================================================
//chapter 1 example 5

clc;
clear all;

//intercepts given are a,2b,-3c/2
//from the law of rational indices
//a:2b:-3c/2=a/h:b/k:c/l


//variable declaration
h1 = 1;               //miller indices
k1 = 1/2;               //miller indices
l1 = -2/3;               //miller indices

//calculation
p = int32([1,2,3]);
l2 = lcm(p);
h=h1*l2;
k=(k1)*double(l2);
l=(l1)*double(l2);

//result
mprintf('miller indices = %d %d %d',h,k,l);

//============================================================================
