// Inverse Laplace transform of a rational polynomial in s
// depends on pf_residu 

function s = ilaplace(H)
  if(H ~= 0) then
    [r z p] = pf_residu(H.num,H.den);
    n = length(r);
    s = '';
    for i = 1:(n-1) ;
      s = s + string(r(i)) + '*e^' + string(p(i)) + 't  + ';
    end
    s = s + string(r(n)) + '*e^' + string(p(n)) + 't ';
  else
    s ='0';
  end
endfunction
 
