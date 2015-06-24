clc;
clear all;
v=45*100*17.78;//in m^3
absorp1=(700*0.03)+(600*0.06)+(400*0.025)+(600*0.3);
absorp_p=600*4.3;
T1=(0.16*v)/(absorp1);//Reverbaration time (empty hall) 
T2=(0.16*v)/(absorp_p+absorp1);//Reverbaration time with full capacity
disp(+'second',T1,'Reverbaration time (empty hall) =');
disp(+'second',T2,'Reverbaration time with full capacity =');
//There is slight variation in answer than book's answer..verified in calculator too.(mistake in textbook)
