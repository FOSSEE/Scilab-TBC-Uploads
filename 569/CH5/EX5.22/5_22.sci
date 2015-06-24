//
clc;
Ro=3980;
Ta=273;
disp('3980= a*3980*exp(b/273)')
Rt50=794;
Ta50=273+50;
disp('794= a*3980*exp(b/323)')
disp('on solving')
disp('a=30*10^-6', 'b=2843')
Ta40=273+40;
Rt40=(30*10^-6)*3980*exp(2843/313);
disp(Rt40,'Resistance at 40 degree C (ohm)')
Rt100=(30*10^-6)*3980*exp(2843/373);
disp(Rt100,'Resistance at 100 degree C (ohm)')