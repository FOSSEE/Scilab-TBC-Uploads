number = 25000;
meaneach = 320;
sdeach = 540;
claim = 8300000;
meantotal= meaneach*number;
sdtotal = sdeach*sqrt(number);
disp(1- cdfnor("PQ",claim, meantotal, sdtotal ))