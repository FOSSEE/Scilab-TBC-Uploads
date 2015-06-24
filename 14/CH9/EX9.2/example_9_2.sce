//Chapter 9
//Page 234
//Example 9.2
//integrate
clear;clc;
U1 = integrate('(0.008 * P1 + 8)','P1',400,450);
U2 = integrate('(0.0096 * P2 + 6.4)','P2',450,500);
U = U1 - abs(U2);
disp(U1,'Increase in cost for unit 1 in $ per hour is')
disp(abs(U2),'Increase in cost for unit 2 in $ per hour is')
disp(U,'Net increase in cost in $ per hour is')