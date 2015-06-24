function [C,degC] = poladd(A,degA,B,degB)
[rA,cA] = polsize(A,degA);
[rB,cB] = polsize(B,degB);
if cA ~= cB | rA ~= rB
   error('poladd: Inconsistent dimensions');
end

degC = max(degA,degB);
if degC >= degA
   A = [A zeros(rA,(degC-degA)*cA)];
end
if degC >= degB
   B = [B zeros(rB,(degC-degB)*cB)];
end
C = A+B;
endfunction;
