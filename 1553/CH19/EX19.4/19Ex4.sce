//chapter 19 Ex 4

clc;
clear;
close;

sCycle=12; sBoat=10; sRiver=4;
sAvgCyclist=12;  //since the speed of cyclist is same in both directions
sDown=sBoat+sRiver;
sUp=sBoat-sRiver;
sAvgSailor=(2*sDown*sUp)/(sDown+sUp);
if(sAvgCyclist>sAvgSailor)
    {printf("The cyclist will return to place A first");}
    
else{printf("The sailor will return to place A first");}
    end
