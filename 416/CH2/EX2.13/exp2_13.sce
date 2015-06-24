clc
disp("example 2.13")
dlf=0.825;   //daily load factor
lptmlp=0.87;  //average daily peak load to monthly load peak
mlptalp=0.78;  //average monthly peak load to annual load peak
printf("annual load factor =%fx%fx%f=%f.",dlf,lptmlp,mlptalp,dlf*lptmlp*mlptalp)