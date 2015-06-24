// function [rQ,cQ] = polsize(Q,degQ)
// FUNCTION polsize TO DETERMINE THE DIMENSIONS
// OF A POLYNOMIAL MATRIX
//
// H. Kwakernaak, August, 1990

function [rQ,cQ] = polsize(Q,degQ)

[rQ,cQ] = size(Q); cQ = cQ/(degQ+1);
if abs(round(cQ)-cQ) > 1e-6
   error('polsize: Degree of input inconsistent with number of columns');
else
   cQ = round(cQ);
end
endfunction
