// Value of polynomial p(x), evaluated at x
// 11.16

// finds the value of a polynomial in powers of z^{-1}
// function Y = filtval(P,z)

function Y = filtval(P,z)
N = length(P)-1;
Q = polyno(P,'x');
Y = horner(Q,z)/z^N; 
endfunction;
