// function C = seshft(A,B,N)
//given A and B matrices, returns C = [<-A-> 0
//                                    0  <-B->] with B shifted east by N cols

function C = seshft(A,B,N)
[Arows,Acols] = size(A);
[Brows,Bcols] = size(B);
if N >= 0
   B = [zeros(Brows,N) B];
   Bcols = Bcols + N;
elseif N < 0
   A = [zeros(Arows,abs(N)) A];
   Acols = Acols +abs(N);
end
  if Acols < Bcols
        A = [A zeros(Arows,Bcols-Acols)];
  elseif Acols > Bcols
        B = [B zeros(Brows,Acols-Bcols)];
  end
  C = [A
       B];
endfunction
