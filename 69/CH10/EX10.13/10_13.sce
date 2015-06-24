clear; clc; close;

SR = 2;
Vi_delta = 0.5;
t_delta = 10;

Acl = SR/(Vi_delta/t_delta);

disp(Acl,'Maximum Closed loop voltage gain = ');
