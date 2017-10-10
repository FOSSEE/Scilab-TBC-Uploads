//Exa 21.2
// To find-
//a) the hopping bandwidth,
//b) What is the chip-rate,
//c) How many chips are there in each data symbol,
//d) What is the processing gain.

clc;
clear all;

Stepsize=200; //in Hz
Chipsmin=20;//length of linear feedback shift register 
Datarate=1.2*10^3;  //bps

//solution
No_of_tones=2^Chipsmin;
Bss=No_of_tones*Stepsize;
Chiprate=Datarate*Chipsmin;
Gp=Bss/Datarate;//processing gain
Symbolrate=Datarate/3;  //8-ary FSK is used
Chips_symbol=Chiprate/Symbolrate;
printf('The Hopping Bandwidth is %.3f MHz\n',Bss/10^6);
printf(' The chiprate is %d kchip/sec\n',Chiprate/10^3);
printf(' Chips per symbol are %d \n',Chips_symbol);
printf(' The processing gain is %.1f\n',Gp);
