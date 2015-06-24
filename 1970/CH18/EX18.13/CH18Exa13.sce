// Scilab code Exa18.13 : : Page-768(2011)
clc; clear;
function s = symbol(val)
    if val == 2 then
        s = '++';
    elseif val == 1 then
        s = '+';
    elseif val == 0 then
        s = '0';
    elseif val == -1 then
        s = '-';
    end
endfunction

B = 1;         // Baryon number
S = 0;        // Strangeness quantum number
Q = rand(1,4)    // Charge
I3 = 3/2; 
printf("\nThe possible charge states are");
for i = 0:1:3
    Q = I3+(B+S)/2;
    sym = symbol(Q);
    printf(" %s", sym);
    I3 = I3 - 1;
end
printf(" respectively");

// Result
// The possible charge states are ++ + 0 - respectively 