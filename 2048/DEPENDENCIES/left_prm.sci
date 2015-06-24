// function [B,degB,A,degA,Y,degY,X,degX] = ...
// left_prm(N,degN,D,degD,job,gap)
//
// does three different things according to integers that 'job' takes
// job = 1.
// this is the default.  It is always done for all jobs.
//         -1                                  -1    -1
// Given ND  , returns coprime B and A where ND   = A  B
// It is enough if one sends the first four input arguments
// If gap is required to be sent, then one can send either 1 or a null
// entry for job
// job = 2.
// first solve for job = 1 and then solve XA + YB = I
// job = 3.
// used in solving XD + YN = C
// after finding coprime factorization, data are returned
//
// convention: the variable with prefix deg stand for degrees
// of the corresponding polynomial matrices
//
// input:
// N: right fraction numerator polynomial matrix
// D: right fraction denominator polynomial matrix
// N and D are not neccessarily coprime
// gap: variable used to zero entries; default value is 1.0e+8
//
// output
// b and A are left  coprime num. and den. polynomial matrices
// X and Y are solutions to Aryabhatta identity, only for job = 2

function [B,degB,A,degA,Y,degY,X,degX] = left_prm(N,degN,D,degD,job,gap)
if argn(2) == 4 | argn(2) == 5 
   gap = 1.0e8 ;
end
// pause
if argn(2) == 4, 
job = 1; end
[F,degF] = rowjoin(D,degD,N,degN);
[Frows,Fbcols] = polsize(F,degF);       // Fbcols = block columns
Fcols = Fbcols * (degF+1) ;             // actual columns of F
T1 = [];pr =[];degT1 = 0; T1rows = 0;shft = 0;
S=F; sel = ones(Frows,1); T1bcols =1;
abar = (Fbcols + 1):Frows;              // a_super_bar of B-C.Chang
while isempty(T1) | T1rows < Frows - Fbcols
      Srows = Frows*T1bcols; // max actual columns of result
      [T1,T1rows,sel,pr] = ...
           t1calc(S,Srows,T1,T1rows,sel,pr,Frows,Fbcols,abar,gap);
      [T1rows,T1cols] = size(T1);
      if T1rows < Frows - Fbcols
        T1 = [T1 zeros(T1rows,Frows)];
        T1bcols = T1bcols  + 1;         // max. block columns of result
        degT1 = degT1 + 1;              // degree of result
        shft = shft +Fbcols;
        S = seshft(S,F,shft);
        sel = [sel;sel(Srows-Frows+1:Srows)];
        rowvec = (T1bcols-1)*Frows+(Fbcols+1):T1bcols * Frows;
        abar = [abar rowvec];           // A_super_bar of B-C.chang
      end
end

[B,degB,A,degA] = colsplit(T1,degT1,Fbcols,Frows-Fbcols);
[B,degB] = clcoef(B,degB);
B = -B;
[A,degA] = clcoef(A,degA);
// pause
if job == 2 
      S = S(mtlb_logical(sel),:);                      // columns
      [redSrows,Scols] = size(S); 
      C = [eye(Fbcols,Fbcols) zeros(Fbcols,Scols-Fbcols)];   // append with zeros
      T2 = C/S;
      T2 = makezero(T2,gap);
      T2 = move_sci(T2,find(sel),Srows);
      [X,degX,Y,degY] = colsplit(T2,degT1,Fbcols,Frows - Fbcols);
      [X,degX] = clcoef(X,degX);
      [Y,degY] = clcoef(Y,degY);
elseif job == 3
      Y = S;
      degY = sel;
      X = degT1;
      degX = Fbcols;
else
      if job ~= 1
         error('Message from left_prm:no legal job number specified')
      end
end
endfunction



