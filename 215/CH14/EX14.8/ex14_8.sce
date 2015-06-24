clc
//Example 14.8
//Install Symbolic toolbox
//Find the current for t>0
syms s
s=%s
//From figure 14.5
//Writing the KVL equation and taking the Laplace transform
I=-2/(s+4)
i=ilaplace(I)
disp(i,'i(t)=')