//Example 1.19.1
//whether the signal is energy signal or power signal
clc ;
 t =0:0.001:10;
 y= exp (-10*t);
 E= integrate ( ' ( exp(-10*t)) ^2 ' , ' t ' ,0 ,2* %pi );
disp (E, ' Energy o f the s i g n a l i s ' );
 disp ( 'since the energy is finite hence it is energy signal');
 figure
plot(t,y,'red');
xtitle('Required figure'); 
