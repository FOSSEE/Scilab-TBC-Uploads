//Example 1.21<i>
//whether the signal is energy signal 
clc ;
 t =0:0.001:10;
 y= exp (-3*t);
 E= integrate ( ' ( exp(-3*t)) ^2 ' , ' t ' ,0 ,2* %pi );
disp (E, ' Energy o f the s i g n a l i s ' );
 disp ( 'since the energy is finite , hence it is energy signal');
 //example1.21<iii>
//show whethet x(t)=cost is a power or energy signal
clc;
t=0:0.01:100;
x=cos(t);
P=(integrate('cos(t)^2','t',0,2*%pi))/(2*%pi);
disp(P,'The power of the signal is:');
E=(integrate('cos(t)^2','t',0,2*%pi));
disp(E,'The energy is:');
disp('As t tends to infinity energy also tends to iinfinity but power remains finite.hence it is power signal');
//Example 1.21<iv>
//Find the energy of the signal
clc;
E=0;//initialize
for n=0:200
    x(n+1)=(1/3)^n;
end
for n=0:200
    E=E+x(n+1)^2;
end
if E<%inf then
    disp(E,'The energy of the signal is;');
else disp('The given signal is not energy signal');
end


