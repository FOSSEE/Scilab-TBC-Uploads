// function [P,degP] = transp(Q,degQ)
// MATLAB FUNCTION transp TO TRANSPOSE
// A POLYNOMIAL MATRIX

// H. Kwakernaak, July, 1990

function [P,degP] = transp(Q,degQ)

[rQ,cQ] = polsize(Q,degQ);

rP = cQ; cP = rQ; degP = degQ;
P = zeros(rP,(degP+1)*cP);
for i = 1:degP+1
    P(:,(i-1)*cP+1:i*cP) = Q(:,(i-1)*cQ+1:i*cQ)';
end

endfunction;
