// Example A-5-9
// Effect of zeros on step response of a system
// Interactive program

clear; clc;
xdel(winsid());  //close all windows

function drawg()
  delete(gca())
  N = 4*(s*1/z + 1); 
  G = syslin('c',N,D);
  ys = csim('step',t,G);
  m = max(ys);
  Mp = m -1;
  plot(t,ys);
  xtitle('Unit Step Response for zero at z =' + string(z) + ' Mp = ' + string(Mp),'t (sec)','Output');
  xgrid(color('gray'));
  a = gca();
  a.data_bounds = [0 0;10 4]
endfunction

s = %s;
z = 0.2;
D = s^2 + 4*s + 4;
t = 0:0.02:10;
drawg();
h = uicontrol('style','pushbutton','position','250|10|60|20','callback','z = z - 0.1;drawg()','String','<-');
j = uicontrol('style','pushbutton','position','310|10|60|20','callback','z = z + 0.1;drawg()','String','->');




