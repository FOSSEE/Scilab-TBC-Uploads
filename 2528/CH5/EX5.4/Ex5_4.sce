//clear//
//Example5.4:System gain and upper break frequency
//Page 140
//figure 5.6
clear;
clc;
//STAGE 1
disp("Stage 1");
Rf1=14000;      //in Ohms
Ri1=2000;         //in Ohms
Av1=1+(Rf1/Ri1);
disp(Av1,"Av");
Anoise1=1+(Rf1/Ri1);
disp(Anoise1,"Anoise");
GBW=1*10^6;         //in Hz (from Datasheet)
f1=GBW/Anoise1;
disp(f1,"f2");

//STAGE 2
disp("Stage 2");
Rf2=20000;      //in Ohms
Ri2=10000;         //in Ohms
Av2=-(Rf2/Ri2);
disp(Av2,"Av");
Anoise2=1+(Rf2/Ri2);
disp(Anoise2,"Anoise");
GBW=1*10^6;         //in Hz (from Datasheet)
f2=GBW/Anoise2;
disp(f2,"f2");

//STAGE 3
disp("Stage 3");
Rf3=12000;      //in Ohms
Ri3=4000;         //in Ohms
Av3=1+(Rf3/Ri3);
disp(Av3,"Av");
Anoise3=1+(Rf3/Ri3);
disp(Anoise3,"Anoise");
GBW=1*10^6;         //in Hz (from Datasheet)
f3=GBW/Anoise3;
disp(f3,"f2");

//SYSTEM
Av=Av1*Av2*Av3;
disp(Av,"Av");

disp("Dominant break frequency here is 125kHz");
GBW=f1*64;
disp(GBW,"Gain bandwidth product is");
