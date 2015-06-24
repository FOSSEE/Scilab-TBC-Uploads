// Step response characteristics
// Plots the step response and computes Maximum Overshoot
// Peak Time,Rise Time and Settling Time

function [Mp,tp,tr,ts] = stepch(G,from,to,step,settling_margin)
  
  t = from:step:to;
  u = ones(1,length(t));
  y = csim(u,t,G);
  plot(t,y);
  xtitle('Unit Step Response','t (sec)','Output');
  xgrid(color('gray'));

  [m t1] = max(y);
  tp = (t1 - 1) * step;
  Mp = m - 1;

  i = 1;
  if tp == to then 
    tr = %nan; 
  else  
    while(y(i) < 0.1) i = i + 1; end;
    r1 = i;
    while(y(i) < 0.9) i = i + 1; end;
    tr = (i-r1) * step;
  end
  
  l = 1 - settling_margin;
  h = 1 + settling_margin;
  for i = length(t):-1:1
    if( y(i) < l | y(i) > h) break; end;
  end
  ts = (i - 1) * step;
endfunction
