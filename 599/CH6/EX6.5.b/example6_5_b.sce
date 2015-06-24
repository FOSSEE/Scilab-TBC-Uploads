
clear;
clc;
printf("\t Example 6_5_b\n");

//part(ii)
w1=4.934;                    //weight after two hours
w0=5.314;                   //initial weight 
w2=w0-w1;                  // water evaporated in 2 hrs
H1=.01;                   //humidty of incoming air
H2=.03;                  //humidity of leaving air
yout=.03;
yin=.01;
Gs=w2/(yout- yin);      //water carried away
printf("\n the amount of air required in 2hours is :%f kg",Gs);
//end