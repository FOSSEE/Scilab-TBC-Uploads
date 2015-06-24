//Example 5.4.3 page 5.14

clc;
clear;

Ttx= 8*10^-9;
Tintra= 1*10^-9;
Tmodal=5*10^-9;
Trr= 6*10^-9;
Tsys= sqrt(Ttx^2+(8*Tintra)^2+(8*Tmodal)^2+Trr^2);

BWnrz= 0.7/Tsys;
BWnrz=BWnrz/1000000;//converting in ns for dislaying...
BWrz=0.35/Tsys;
BWrz=BWrz/1000000;//converting in ns for dislaying...
printf("Maximum bit rate for NRZ format is %.2f Mb/sec",BWnrz);
printf("\n\nMaximum bit rate for RZ format is %.2f Mb/sec",BWrz);
