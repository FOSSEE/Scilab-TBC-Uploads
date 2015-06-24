
// Plot System Response
// Computes the response and plots the input and response together
 
function y = plotresp(u,t,G,text)
  y = csim(u,t,G);
  plot(t,u,t,y);
  xtitle(text,'t (sec)','Input and Output');
  xgrid(color('gray'));
  legend('input','output');
endfunction
