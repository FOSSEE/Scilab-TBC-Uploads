
// Theory and Problems of Thermodynamics
// Chapter 12
// Statistical Thermodynamics
// Example 1
clear ;clc;

//Given data
U = 12                  // Total energy units
N = 4                   // number of non-degenerate energy states

// distribution of macrostates should satisfy the constraints
// sum(ni)=N;          sum(ni*Ei)=U
A = [2,2,1,0; 1,0,2,4;0,2,1,0;1,0,0,0];   // distribution of macrostates

// the number of possible macrostate 
for i = 1:size(A,'r')
    O_n(i) = factorial(N)/prod(factorial(A(:,i)));
end

// results display
a1 = {'I','II','III','IV'};
a2 = {a1;string(A)}
a3 = {'Energy','E=1','E=2','E=3','E=4'}
a4 = cat(2,a3',a2)
Macrostate = {a4;'------','-----','-----','-----','-----';'Omega',string(O_n)'}


mprintf('\n        Macrostates \n')
disp(Macrostate)
