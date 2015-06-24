// colsplit
// The command
//   [P1,degP1,P2,degP2] = colsplit(P,degP,p1,p2)
// produces two polynomial matrix P1 and P2. P1 consists of the first
// p1 columns of P and P2 consists of the remaining p2 columns of P.

// H. Kwakernaak, July, 1990


function [P1,degP1,P2,degP2] = colsplit(P,degP,p1,p2)

if isempty(P)
   P1 = []; P2 = [];
   degP1 = 0; degP2 = 0; 
   return;
end

[rP,cP] = polsize(P,degP);
if p1 < 0 | p1 > cP | p2 < 0 | p2 > cP | p1+p2 ~= cP
   error('colsplit: Inconsistent numbers of columns');
end
rP1 = rP; rP2 = rP; cP1 = p1; cP2 = p2;
degP1= degP; degP2 = degP;

if p1 == 0
   P1 == []; P2 = P;
elseif p2 == 0
   P1 = P; P2 = [];
else
   P1 = zeros(rP1,(degP1+1)*cP1); P2 = zeros(rP2,(degP2+1)*cP2);
   for i = 1:degP+1
       P1(:,(i-1)*cP1+1:i*cP1) = P(:,(i-1)*cP+1:(i-1)*cP+cP1);
       P2(:,(i-1)*cP2+1:i*cP2) = P(:,(i-1)*cP+cP1+1:i*cP);
   end
end
endfunction;
