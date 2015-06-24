  //Example 3.18      pg no-186-187
cosQ=0.8;
sinQ=0.6;
VL=10000;
V=5000*10^3;               //VOLTAGE
P.F=0.9;                 //POWER FACTOR
IL=V/(1.732*VL*cosQ) ;
I1=IL*cosQ;    //ACTIVE  COMPONENT
I2=IL*sinQ;    //REACTIVE  COMPONENT
P=1.732*(VL*IL*P.F)
disp('i) IL = '+string (IL)+' A');
disp('i) ACTIVE COMPONENT = '+string (I1)+' A');
disp('i)  REACTIVE COMPONENT = '+string (I2)+' A');
disp('i)  P  = '+string (P)+' KW');
