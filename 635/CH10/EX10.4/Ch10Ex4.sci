// Scilab Code Ex 10.4 Degeneracy of Energy Level: Page-332 (2010)
// Function to find the factorial of a number
function[f] = fact(num)
    f = 1;
    for i = 1:1:num
        f = f*i;
    end
endfunction

// Fucntion to determine degenerate energy states
function[degstates] = degno(a, b, c)// degno takes three arguments
    if  a == b & b == c then // check if all the values are same
        degeneracy = 3;
        degstates = fact(3)/fact(degeneracy); //calculate degenerate states
    end
    if a == b | b == c | c == a then    // check if any two values are equal
        degeneracy = 2;
        degstates = fact(3)/fact(degeneracy); //calculate degenerate states
    end
    if a ~= b & b ~= c then    // check if all the values are different
        degeneracy = 1;
        degstates = fact(3)/fact(degeneracy); //calculate degenerate states
    end
endfunction
// 
clc
coef = 38;    // Coefficient of H^2/(8*m*a^2)
nx = zeros(1,5);    // Quantum number corresponding to x-direction
ny = zeros(1, 5);   // Quantum number corresponding to y-direction 
nz = zeros(1,5);    // Quantum number corresponding to z-direction
deg = zeros(1,5);    // Variable to store the degeneracy of states
count = 1;    // set the counter 
sum = 0;     // initialize the sum
// Look for all the possible set of values for nx, ny and ny
for i = 1:1:10  
    for j = 1:1:10
        for k = 1:1:10
      // Check for the condition and avoid repetition of set of values
            if ((i^2+j^2+k^2==coef) & (i+j+k)> sum) then 
                nx(1,count)=i; // Save current i value
                ny(1,count)=j; // Save current j value
                nz(1,count)=k; // Save current k value
                deg(1,count) = degno(i, j, k); // Save degeneracy for given set of values
                count = count + 1; // Increment the counter
                sum = i + j + k; // Add the three values of quantum numbers
            end
        end
    end
end
printf("\nThe %d set(s) of values of quantum number are : \n", count-1);
deg_states = 0; // Intialize the variable
for i = 1:1:count-1
    printf("\nnx = %d, ny = %d, nz = %d\n", nx(1,i), ny(1,i), nz(1,i));
    deg_states = deg_states + deg(1,i); // Accumulate the degeneracy
end
    printf("\nThe given energy level is %d-fold degenerate.", deg_states);    
//Result
// The 2 set(s) of values of quantum number are :
//         nx = 1, ny = 1, nz = 6
//         nx = 2, ny = 3, nz = 5
// The energy level is 9-fold degenerate