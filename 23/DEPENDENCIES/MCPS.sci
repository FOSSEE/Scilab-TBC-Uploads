function[Q]=MCPS(T0,T,A,B,C,D)
  t=T/T0;
  Q=(A)+(((B*T0)+(((C*T0*T0)+(D/(t*t*T0*T0)))*(t+1)/2))*((t-1)/log(t)))
  funcprot(0);
endfunction
    