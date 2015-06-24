// function b = cindep( S,gap)
// Used in XD + YN = C. All rows except the last of are assumed to
// be independent.  The aim is to check if the last row is dependent on the
// rest and if so how.  The coefficients of dependence are sent in b.
function b = cindep( S,gap)

if argn(2) == 1
        gap = 1.0e8;
end
eps = 2.2204e-016;
[rows,cols] = size(S);
if rows > cols
   ind = 0;
else
   sigma = svd(S);
   len = length(sigma);
   if (sigma(len)/sigma(1) <= (eps*max(i,cols)))
      ind = 0;                  //not independent
   else
      if or(sigma(1:len-1) ./sigma(2:len)>=gap)
         ind = 0;               // not dependent
      else
         ind = 1;               //independent
      end
   end
end
if ind
   b = [];
else
   b = S(rows,:)/S(1:rows-1,:);
   b = makezero(b,gap);
end
endfunction


