// Chapter 5 additional Example 16
//==============================================================================
clc;
clear;

//input data
// the intercept along X-axis be c1 = a
// the intercept along Y-axis be c2 = b/2 and
// the intercept along Z-axis be c3 = 3c
// Therefore, p = c1/a = a/a = 1
// q = c2/b = (b/2)/b = 1/2
// r = c3/c = (3c)/c  = 3
// therefore h = 1/p = 1
// k = 1/q = 2
// l = 1/r = 1/3
// lcm of 1 1 and 3 = 3
h = 1
k = 2
l = 1/3
p = [1 1 3]
s = lcm(p);
h1= s*h
k1= s*k
l1= s*l;
// Output
mprintf('(h k l) = (%d %d %d)',h1,k1,l1);
//==============================================================================
