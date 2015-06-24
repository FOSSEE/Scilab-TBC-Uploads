clc;
//Example 24.4
//Page No 990

disp("Given: Refer to figure");

//solution

disp("To achieve a S/N ratio of 32dB out of the FM demodulator, an input C/N of 15dB is required. Solving the receiver input carrier to noise ratios give, ");

Cmin=15+6.5

disp('dB',Cmin,"Cmin/N = ");

cmin=Cmin+(-104);

disp('dBm',cmin,"Cmin = ");

Pt=112+cmin;

disp('dBm',Pt,"Pt = ");
