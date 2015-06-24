clear ; clc;
 xdel ( winsid ()); // c l o s e a l l windows
 s = %s;
 num = 25.04* s + 5.008;
den = poly([5.008 25.1026 5.03247 1],'s','c');
Hss = cont_frm (num ,den);
disp (Hss , ' Hss = ' )
