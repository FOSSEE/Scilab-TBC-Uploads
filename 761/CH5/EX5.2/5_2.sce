clc;
//page no 179
//prob no. 5.2
//A transmitter  with carrier power o/p 10W at efficiency 70% at 100% modulatn
Po=10;eta=0.7;
//Determination of dc power o/p
Ps=Po/eta;
disp('W',Ps,'The value of dc power input is');
//Determination of audio power 
Pa=0.5*Ps;
disp('W',Pa,'The value of audio power is');