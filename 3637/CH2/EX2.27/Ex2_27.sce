//problem 27 pagenumber 2.109
//given
format(6);
fa=200;//hz
vi=2;//volt
c1=0.1e-6;//farad
//determine cf1 rf1 r1
rf1=1/(2*3.14*fa*c1);clf();
r1=1/(2*3.14*c1*fa*10);//fb=10*fa
cf1=r1*c1/rf1;
disp('Rf = '+string(rf1/1e3)+' Kohm');
disp('R1 = '+string(r1)+' ohm');
disp('Cf = '+string(cf1*10^6)+' μfarad');//error in book
subplot(1,2,1);
x=0:0.1:10*%pi;
y=-2*sin(2*fa*3.14*x);
plot(x,y);
xlabel('time in sec');
ylabel('Vi in volts');
title('input waveform problem Ex2_27');
subplot(1,2,2);
x=0:0.1:10*%pi;
y=-1.75*cos(2*fa*3.14*x);
plot(x,y);
xlabel('time in sec');
ylabel('V0 in volts');
title('output waveform problem Ex2_27');
