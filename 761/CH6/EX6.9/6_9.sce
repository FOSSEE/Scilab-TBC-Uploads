clc;
//page no 258
//prob no. 6.9
//An IF transformer at 455kHz & primary ckt has Qp=40 & secondary Q=30
fo=455*10^3;Qp=40;Qs=30;
//a)Determination of critical coupling factor
kc=1/sqrt(Qp*Qs);
disp(kc,'a)The critical coupling factor is');
//b)Determination of optimum coupling factor
Kopt=1.5*kc;
disp(Kopt,'b)The optimum coupling factor is');
//c)Determination of optimum coupling factor
B=Kopt*fo;
disp('kHz',B/1000,'c)The BW using optimum coupling factor is');