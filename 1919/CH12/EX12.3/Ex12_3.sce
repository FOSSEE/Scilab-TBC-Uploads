
// Theory and Problems of Thermodynamics
// Chapter 12
// Statistical Thermodynamics
// Example 3
clear ;clc;

//Given data
U = 10                  // Total energy units
N = 4                   // number of non-degenerate energy states
n = 1:4                 // energy levels
g = [1 2 2 1];          // degeneracies of energy levels


// distribution of macrostates should satisfy the constraints
// sum(ni)=N;          sum(ni*Ei)=U
// distribution of macrostates
A = [2,1,1,0,0; 0,1,0,3,2; 0,1,3,0,2; 2,1,0,1,0]; 

// the number of possible microstates for Maxwell-Boltzmann statistics
for i = 1:size(A,'r')+1
    O_n(i) = factorial(N)*prod((g.^A(:,i)')./factorial(A(:,i))');
end

// output display
x = {'Macrostate','I','II','III','IV','V'; 'Microstate',string(O_n)'}
disp(x)
mprintf('\n The most probable macrostates are II and V with 96 microstates')



