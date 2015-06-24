clear; clc; close;

Vcc = 20;
Vb = 4;
Ve = 3.3;
Ic = 0;
disp('Drop across transistor is : ');
disp('This suggests that transistor is in on state.',Vb-Ve);
disp('Ic is : ')
disp('This suggest 2 things.',Ic)
disp('Either there is poor connection between Rc & terminal');
disp('or the transistor has an open base-to-collector junction.');
