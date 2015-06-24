//===============================================================================================
// chapter 1 example 3


clc;
clear;

// Variable Declaration
 h          = 4;               //miller indices
 k          = 1;               //miller indices
 l          = 2;               //miller indices
 
 //result

v= int32([h k l]);
lc=double(lcm(v));
 //calculation
 h1 =1/h;
 k1 =1/k;
 l1 =1/l;
 a = h1*lc;
 b = k1*lc;
 c = l1*lc;
 //result
 mprintf('miller indices = %d %d %d',a,b,c);
 
 //===============================================================================================
