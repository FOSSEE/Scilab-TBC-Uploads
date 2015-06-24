
// Theory and Problems of Thermodynamics
// Chapter 12
// Statistical Thermodynamics
// Example 4
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

// the number of possible microstates for Bose-Einstein statistics
for i = 1:size(A,'r')+1
    temp = 0
    for j = 1:N
     temp(j) = factorial(A(j,i)+g(j)-1)/(factorial(A(j,i)) * factorial(g(j)-1))
    end
    O_BE(i) = prod(temp)
end

b = {'I','II','III','IV','V';string(A); string(O_BE)'}
b1 = {'Ei',string(4:-1:1),'O_BE'}'
b2 = {'gi',string(g),''}'
b3 = {'--','--','--','--','--'}'
BE = cat(2,b1,b2,b)

mprintf('The number of microstates associated with each of macrostates for Bose-Einstein statistics \n')
disp(BE)



// the number of possible microstates for Fermi-Dirac statistics
// Not more than one particle can be present in any energy state.
// Hence only two macrostates are possible.
F = [1,1,1,1;0,2,2,0]'
for i = 1:2
    temp = 0
    for j = 1:N
     temp(j) = factorial(g(j))/(factorial(F(j,i)) * factorial(g(j)-F(j,i)))
    end
    O_FD(i) = prod(temp)
end

f = {'I','II';string(F); string(O_FD)'}
f1 = {'Ei',string(4:-1:1),'O_FD'}'
FD = cat(2,f1,b2,f)

mprintf('\n The number of microstates associated with each of macrostates for Fermi-Dirac statistics \n')
disp(FD)
