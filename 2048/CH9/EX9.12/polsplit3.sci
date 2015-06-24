// Procedure to split a polynomial into good and bad factors, as discussed in Sec. 9.5. The factors that have roots outside unit circle or with negative real parts are defined as bad.
// 9.12

// function [goodpoly,badpoly] = polsplit3(fac,a)
// Splits a scalar polynomial of z^{-1} into good and bad 
// factors. Input is a polynomial in increasing degree of 
// z^{-1}.  Optional input is a, where a <= 1.
// Factors that have roots outside a circle of radius a or
// with negative roots will be called bad and the rest
// good. If a is not specified, it will be assumed as 1.

function [goodpoly,badpoly] = polsplit3(fac,a)
if argn(2) == 1, a = 1; end  
if a>1 error('good polynomial also is unstable'); end
fac1 = poly(fac(length(fac):-1:1),'z','coeff');
rts = roots(fac1);
rts = rts(length(rts):-1:1);

// extract good and bad roots
badindex = mtlb_find((abs(rts)>=a-1.0e-5)|(real(rts)<-0.05));
badpoly = coeff(poly(rts(badindex),'z'));
goodindex = mtlb_find((abs(rts)<a-1.0e-5)&(real(rts)>=-0.05));
goodpoly = coeff(poly(rts(goodindex),'z'));

// scale by equating the largest terms
[m,index] = max(abs(fac));
goodbad = convol(goodpoly,badpoly);
goodbad = goodbad(length(goodbad):-1:1);
factor1 = fac(index)/goodbad(index);
goodpoly = goodpoly * factor1;
goodpoly = goodpoly(length(goodpoly):-1:1);
badpoly = badpoly(length(badpoly):-1:1);
endfunction;
