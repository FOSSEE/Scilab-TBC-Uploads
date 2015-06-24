// Frequency response characteristics
function [Mr,wr,bw,repf] = freqch(G,omega)
  
  repf = repfreq(G,omega);    // frequency response (complex numbers)

  [mag phi] = dbphi(repf);  // mag in db
  [Mr k] = max(mag);        // resonant peak
  wr = omega(k);            // resonant freq.
  mag = abs(mag + 3);       // mag = abs( mag - (- 3dB) ) 
  [M j] = min(mag);         // j : is the point where mag  == -3db
  bw = omega(j);

  disp(wr,'resonant frequency = ');
  disp(Mr,'resonant peak (dB)= ');
  disp(bw,'bandwidth = '); 
endfunction

