// Gain at a point on a root locus

function [K,p] = gainat(G)
  z = locate(1,1);
  x = z(1);y = z(2);
  p = x + %i*y;
  disp( p , 'p = ');
  K = 1 / abs(horner(G,p))
  disp( K , 'K = ');
  plot(x,y,'.');
  xstring(x,y,'K = ' + string(K));
endfunction
