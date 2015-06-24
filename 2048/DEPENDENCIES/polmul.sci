// polmul
// The command
//    [C,degA] = polmul(A,degA,B,degB)
// produces the polynomial matrix C that equals the product A*B of the
// polynomial matrices A and B.
//
// H. Kwakernaak, July, 1990


function [C,degC] = polmul(A,degA,B,degB)
[rA,cA] = polsize(A,degA);
[rB,cB] = polsize(B,degB);
if cA ~= rB
   error('polmul: Inconsistent dimensions of input matrices');
end

degC = degA+degB;
C = [];
for k = 0:degA+degB
    mi = 0;
    if k-degB > mi
       mi = k-degB;
    end
    ma = degA;
    if k < ma
       ma = k;
    end
    Ck = zeros(rA,cB);
    for i = mi:ma
        Ck = Ck + A(:,i*cA+1:(i+1)*cA)*B(:,(k-i)*cB+1:(k-i+1)*cB);
    end
    C = [C Ck];
end
endfunction
