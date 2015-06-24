// function [A,degA] = putin(A,degA,B,degB,i,j)
// PUTS IN THE POLYNOMIAL B INTO THE MATRIX A AT (i,j)TH POSITION
// Modified by Kannan Moudgalya on 8 November 1992

function [A,degA] = putin(A,degA,B,degB,i,j)

[rA,cA] = polsize(A,degA);
if degB > degA
  A = [A zeros(rA,(degB-degA)*cA)]; 
  degA = degB;
end  

for k = 0:degB
  A(i,(k*cA)+j) = B(1,k+1);
end
if degA > degB
   for k = degB+1:degA
       A(i,(k*cA)+j) = 0;
   end
   [A,degA] = clcoef(A,degA);
end
endfunction;
