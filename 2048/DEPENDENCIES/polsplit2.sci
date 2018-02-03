// Procedure to split a polynomial into good and bad factors, as discussed in Sec. 9.2.
// 9.3
// function [goodpoly,badpoly] = polsplit2(fac,a)
// Splits a scalar polynomial of z^{-1} into good and bad 
// factors. 
// Input is a polynomial in increasing degree of z^{-1}
// Optional input is a, where a <= 1.
// Factor that has roots of z^{-1} outside a is called
// good and the rest bad.
// If a is not specified, it will be assumed as 1-1.0e-5

function [goodpoly,badpoly] = polsplit2(fac,a)
if argn(2) == 1, a = 1-1.0e-5; end  
if a>1 error('good polynomial is unstable'); end
fac1 = poly(fac(length(fac):-1:1),'z','coeff');
rts1 = roots(fac1);
rts = rts1(length(rts1):-1:1);

// extract good and bad roots
badindex = find(abs(rts)>=a); // mtlb_find has been replaced by find
badpoly = coeff(poly((rts(badindex)),"z","roots"));
goodindex = find(abs(rts)<a); // mtlb_find has been replaced by find
goodpoly = coeff(poly(rts(goodindex),"z","roots"));

// scale by equating the largest terms
[m,index] = max(abs(fac));
goodbad = convol(goodpoly,badpoly);
goodbad1 = goodbad(length(goodbad):-1:1);//--
factor1 = fac(index)/goodbad1(index);//--
goodpoly = goodpoly * factor1;
goodpoly = goodpoly(length(goodpoly):-1:1);
badpoly = badpoly(length(badpoly):-1:1);
endfunction;



