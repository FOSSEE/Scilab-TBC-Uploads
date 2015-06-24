// Recursive computation of Ej and Fj
// 11.1

function [Fj,dFj,Ej,dEj] = recursion(A,dA,C,dC,j)
Fo = C; dFo = dC;
Eo = 1; dEo = 0;
A_z = A(2:dA+1); dA_z = dA-1;
zi = 1; dzi = 0;
for i = 1:j-1
    if (dFo == 0)
        Fn1 = 0;
    else
        Fn1 = Fo(2:(dFo+1));
    end
    dFn1 = max(dFo-1,0);
    Fn2 = -Fo(1)*A_z;  dFn2 = dA-1;
    [Fn,dFn] = poladd(Fn1,dFn1,Fn2,dFn2);
    zi = convol(zi,[0,1]); dzi = dzi + 1;
    En2 = Fn(1)*zi; dEn2 = dzi;
    [En,dEn] = poladd(Eo,dEo,En2,dEn2);
    Eo = En; Fo = Fn;
    dEo = dEn; dFo = dFn;
end
if (dFo == 0)
    Fn1 = 0;
else
Fn1 = Fo(2:(dFo+1));
end;
dFn1 = max(dFo-1,0);
Fn2 = -Fo(1)*A_z;  dFn2 = dA-1;
[Fn,dFn] = poladd(Fn1,dFn1,Fn2,dFn2);
Fj = Fn; dFj = dFn;
Ej = Eo; dEj = dEo;
endfunction;

