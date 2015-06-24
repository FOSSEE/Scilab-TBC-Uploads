function[Q]=IDCPS(T0,T,dA,dB,dC,dD)
  t=T/T0;
  Q=((dA)*log(t))+(((dB*T0)+(((dC*T0*T0)+(dD/(t*t*T0*T0)))*(t+1)/2))*(t-1))
  funcprot(0);
endfunction
    