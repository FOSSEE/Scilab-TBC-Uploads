 //EXAMPLE 3.19     PG NO-187
VL=230;
VP=VL/1.732;
IL=13.279;
COSQ=0.8;
SINQ=0.6;
P=(1.732*VL*IL*COSQ)
R.P=(1.732*VL*IL*SINQ)      
VA=(1.732*VL*VP)
disp('i) POWER FACTOR = '+string (P)+' W');
disp('i) POWER FACTOR = '+string (R.P)+' var');
disp('i)TOTAL VA = '+string (VA)+' VA');
