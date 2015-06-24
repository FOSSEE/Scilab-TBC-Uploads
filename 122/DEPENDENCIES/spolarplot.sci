// polar plot of a linear system
// repf = spolarplot(G,omega)
// G: linear sytem and omega:is frequency  in rad/s
// repf: is the complex frequency response

function repf = spolarplot(G,omega)
  f = omega /2/%pi;
  repf = repfreq(G,f);
  r = abs(repf);
  theta = atan(imag(repf),real(repf));
  polarplot(theta,r,style = 2);
endfunction
