//chapter 6
//page no159
//exa 6_8
//given
clear;clc;
iol =5;       //in mA
ioh=80;         //bias current in mA
ralarmH=(1.5*1500)/ioh/10^-3;
printf("\n Alarm resistor RalarmH is %0.0f kOhm",ralarmH/1000);
ralarmL=(1.5*300)/iol/10^-3;
printf("\n Alarm resistor RalarmL is %0.0f kOhm",ralarmL/1000);
ialarmh=80*10^-3;
ialarmH=ioh*10^-3/1500;
printf("\n Alarm current  IalarmH is %0.0f microA",ialarmH*10^6);  //unit of anwer misprinted in book
ialarml=5*10^-3;
ialarmL=iol*10^-3/300;
printf("\n Alarm current  IalarmL is %0.0f microA",ialarmL*10^6);


