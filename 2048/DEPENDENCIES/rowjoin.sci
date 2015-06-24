// function [P,degP] = rowjoin(P1,degP1,P2,degP2)
// MATLAB FUNCTION rowjoin TO SUPERPOSE TWO POLYNOMIAL
// MATRICES

// H. Kwakernaak, July, 1990

function [P,degP] = rowjoin(P1,degP1,P2,degP2)

[rP1,cP1] = polsize(P1,degP1);
[rP2,cP2] = polsize(P2,degP2);
if cP1 ~= cP2
  error('rowjoin: Inconsistent numbers of columns');
end

rP = rP1+rP2; cP = cP1;
if degP1 >= degP2
   degP = degP1;
else
   degP = degP2;
end

if isempty(P1)
   P = P2;
elseif isempty(P2)
   P = P1;
else
   P = zeros(rP,(degP+1)*cP);
   P(1:rP1,1:(degP1+1)*cP1) = P1;
   P(rP1+1:rP,1:(degP2+1)*cP2) = P2;
end
endfunction
