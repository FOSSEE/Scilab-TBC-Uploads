
function G = transferf(A,B,C,D)
  H = syslin('c',A,B,C,D);
  G = clean(ss2tf(H));
endfunction
