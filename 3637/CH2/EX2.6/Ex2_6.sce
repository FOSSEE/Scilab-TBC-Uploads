//problem 6 pagenumber 2.90
//given
format(6);
r1=2e3;//ohm
rf1=8e3;//ohm
A=45;//open loop gain
a=1+(rf1/r1);//Nonverting gain
gain=A/(1+A/a);
disp( 'Gain  = '+string(gain));//no unit


