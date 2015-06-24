
// Partial Fraction Residue
// Gives the coefficients of partial fraction expansion for the given polynomial

function  [r,z,p] = pf_residu(N,D)
  z = roots(N)   //Zeros
  p = roots(D)   //Poles

  q = round(p);
  m = 1;    // to keep a count of the root's multiplicity

  for i = 1:length(p)
    if(i < length(p) & q(i + 1) == q(i))
      m = m + 1;
    else 
      P1 = N / pdiv(D,( s - p(i)) ^ m );
      r(i) = horner(P1 ,p(i));
      for j = 1:(m-1)
        P1 = derivat(P1);
        r(i - j) = horner(P1 / gamma(j + 1) ,p(i));
      end            // gamma(j + 1) = j! (factorial)
      m = 1;
    end     
  end 
endfunction

// for details on this method please refer 
// http://en.wikipedia.org/wiki/Partial_fraction

