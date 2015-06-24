
// Theory and Problems of Thermodynamics
// Chapter 12
// Statistical Thermodynamics
// Example 2
clear ;clc;

//Given data
U = 10                  // Total energy units
N = 4                   // number of non-degenerate energy states

// distribution of macrostates should satisfy the constraints
// sum(ni)=N;          sum(ni*Ei)=U
// distribution of macrostates
A = [2,1,1,0,0; 0,1,0,3,2; 0,1,3,0,2; 2,1,0,1,0]; 

// the number of possible macrostate 
for i = 1:size(A,'r')+1
    O_n(i) = factorial(N)/prod(factorial(A(:,i)));
end

// results display
a1 = {'I','II','III','IV','V'};
a2 = {a1;string(A)}
a3 = {'Energy','E=1','E=2','E=3','E=4'}
a4 = cat(2,a3',a2)
Macrostate = {a4;'------','-----','-----','-----','-----','-----';'Omega',string(O_n)'}


mprintf('\n        Macrostates \n')
disp(Macrostate)
mprintf('\n The most probable macrostate is II which has 24 microstates.')

// The microsates of macrostate II sketch:
S1 = string(1:24)
S2 = {'A','A','A','A','A','A','B','B','B','B','B','B','C','C','C','C','C','C','D','D','D','D','D','D',}
S3 = {'B','B','C','C','D','D','A','A','C','C','D','D','A','A','B','B','D','D','A','A','B','B','C','C'}
S4 = {'C','D','B','D','B','C','C','D','A','D','A','C','B','D','A','D','A','B','B','C','A','C','A','B'}
S5 = {'D','C','D','B','C','B','D','C','D','A','C','A','D','B','D','A','B','A','C','B','C','A','B','A',}
S6 = [S1;S2;S3;S4;S5];

sketch = cat(2,a3',S6)
mprintf('\n \n The microstates of macrostate II:')
disp(sketch)
