// Input arguments are co efficients of numerator and denominator
// polynomials in ascending powers of z^-1

// Scicos/Xcos blocks need input polynomials
// with positive powers of z

function [nume,deno] = cosfil_ip(num,den)
exec('polyno.sci',-1);
[Nn,Nd] = polyno(num,'z');
[Dn,Dd] = polyno(den,'z');
nume = Nn*Dd;
deno = Nd*Dn;

endfunction;

