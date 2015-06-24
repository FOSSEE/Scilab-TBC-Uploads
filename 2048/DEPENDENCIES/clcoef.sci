// H. Kwakernaak, July, 1990
// Modified by Kannan Moudgalya in Nov. 1992

function [P,degP] = clcoef(Q,degQ)

[rQ,cQ] = polsize(Q,degQ);

if and(and(Q==0))
  P = zeros(rQ,cQ);
  degP = 0;
else
  P = Q; degP = degQ; rP = rQ; cP = cQ;
  j = degP+1;
  while j >= 0
  X = P(:,(j-1)*cP+1:j*cP)
    if max(sum(abs(X'))) < (1e-8)*max(sum(abs(P)))
       P = P(:,1:(j-1)*cP);
       degP = degP-1;
    else
       j = 0;
    end
    j = j-1;
  end
end
endfunction
