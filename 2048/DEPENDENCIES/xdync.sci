// function [Y,degY,X,degX,B,degB,A,degA] = xdync(N,degN,D,degD,C,degC,gap)
// given coefficient matrix in T1, primary redundant row information sel,
// solves XD + YN = C

// calling order changed on 16 April 2005.  Old order:
// function [B,degB,A,degA,Y,degY,X,degX] = xdync(N,degN,D,degD,C,degC,gap)

function [Y,degY,X,degX,B,degB,A,degA] = xdync(N,degN,D,degD,C,degC,gap)
if argn(2) == 6
        gap = 1.0e+8;
end

[F,degF] = rowjoin(D,degD,N,degN);

[Frows,Fbcols] = polsize(F,degF); //Fbcols = block columns

[B,degB,A,degA,S,sel,degT1,Fbcols] = left_prm(N,degN,D,degD,3,gap);
//if issoln(D,degD,C,degC,B,degB,A,degA)
        [Crows,Ccols] = size(C);
        [Srows,Scols] = size(S);
        S = clean(S);
        S = S(mtlb_logical(sel),:);
        T2 =[];

        for i = 1:Crows,
                Saug = seshft(S,C(i,:),0);
                b = cindep(Saug);
                b = move_sci(b,find(sel),Srows);
                T2 =[T2; b];
        end
        
     [X,degX,Y,degY] = colsplit(T2,degT1,Fbcols,Frows-Fbcols);

     [X,degX] = clcoef(X,degX);
     [Y,degY] = clcoef(Y,degY);
      Y = clean(Y); X = clean(X);
endfunction
