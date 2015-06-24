// function [B,degB] = ext(A,degA,k,l)
// EXTRACTS THE (k,l) ELEMENT OF A polynomial matrix A into B

function [B,degB] = ext(A,degA,k,l)

[rA,cA] = polsize(A,degA);
degB = degA;
B = zeros(1,degB+1);
for m = 0:degB
  B(1,m+1) = A(k,(m*cA)+l);
end

[B,degB] = clcoef(B,degB);
endfunction;
