// function [Rnum,Rnumdeg,Rden,Rdendeg] = l2r(N,degN,D,degD)
// given Numerator and Denominator polynomial matrices in left form,
// not necessarily coprime, finds right coprime factorisation.

function [Rnum,Rnumdeg,Rden,Rdendeg] = l2r(N,degN,D,degD)

[N,degN] = transp(N,degN);
[D,degD] = transp(D,degD);

[Rnum,Rnumdeg,Rden,Rdendeg] = left_prm(N,degN,D,degD);
[Rnum,Rnumdeg] = transp(Rnum,Rnumdeg);
[Rden,Rdendeg] = transp(Rden,Rdendeg);
endfunction;
