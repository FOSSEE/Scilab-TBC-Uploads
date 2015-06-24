// function [T1,T1rows,sel,pr] = ...
// t1calc(S,Srows,T1,T1rows,sel,pr,Frows,Fbcols,abar,gap)
// calculates the coefficient matrix T1
// redundant row information is kept in sel: redundant rows are marked
// with zeros.  The undeleted rows are marked with ones.

function [T1,T1rows,sel,pr] = t1calc(S,Srows,T1,T1rows,sel,pr,Frows,Fbcols,abar,gap)
b = 1;                                  // vector of primary red.rows

while (T1rows < Frows - Fbcols) & or(sel==1) & ~isempty(b)
      S = clean(S);
      b = indep(S(mtlb_logical(sel),:),gap); // send selected rows of S
      if ~isempty(b)
         b = clean(b);      
         b = move_sci(b,find(sel),Srows);
         j = length(b);                      
         while ~(b(j) & or(abar==j))   // pick largest nonzero entry
                j = j-1;                // of coeff. belonging to abar
                if ~j                   
                   fprintf('\nMessage from t1calc, called from left_prm\n\n')
                   error('Denominator is noninvertible')
                end
         end
         if ~or(j<pr & pmodulo(pr,Frows) == pmodulo(j,Frows)) // pr(2),pr(1)
            T1 = [T1; b];               // condition is not violated
            T1rows = T1rows +1;         // accept this vector
         end                            // else don't accept
         pr = [pr; j];                  // update prime red row info
         while j <= Srows
               sel(j) = 0;
               j = j + Frows;
         end
      end
end
endfunction
