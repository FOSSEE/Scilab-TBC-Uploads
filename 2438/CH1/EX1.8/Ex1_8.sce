//==================================================================================
//chapter 1 example 8

clc;
clear all;

//intercepts given are a,2b,-3c/2
//from the law of rational indices
//a:2b:-3c/2=a/h:b/k:c/l


//variable declaration
h12 = 1;               //miller indices
k12 = 1/2;               //miller indices
l12 = 1/%inf;               //miller indices
a = 10*10^-9; 
//calculation

p1 = int32([2,1,1]);
// 1/%inf = 0  ; (1/2 1/1 0/1) hence lcm is taken for [2 1 1]

l22 = lcm(p1);
h=h12*double(l22);
k=(k12)*double(l22);
l=(l12)*double(l22);
d=a/double(((h^2)+(k^2)+(l^2))^(1/2));


//result
mprintf('miller indices = %d %d %d',h,k,l);
mprintf('interplanar distance is =%e Å',d);
//====================================================================================

