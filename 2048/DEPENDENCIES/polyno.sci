// Updated(1-8-07)
// Operations:
// Polynomial definition
// Flipping of coefficients
// Variables ------- passed as input argument (either 's' or 'z')
// Both num and den are used mostly used in scicos files,
// to get rid of negative powers of z

// Polynomials with powers of s need to 
// be flipped only

function [polynu,polyde] = polyno(zc,a)
zc = clean(zc);
polynu = poly(zc(length(zc):-1:1),a,'coeff');
  if a == 'z'
  polyde = %z^(length(zc) - 1);
  else
  polyde = 1;
  end

// Scicos(4.1) Filter block shouldn't have constant/constant
  if type(polynu)==1 & type(polyde)==1
    if a == 'z'
      polynu = %z; polyde = %z;
    else
      polynu = %s; polyde = %s;
    end;
  end;

endfunction
