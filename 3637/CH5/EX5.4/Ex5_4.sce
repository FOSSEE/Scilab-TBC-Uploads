//problem 4 pagenumber 5.97
//given
ra=2.2e3;//ohm
rb=6.8e3;//ohm
c1=0.01e-6;//farad
//determine ontime offtime frequency dutycycle
t1=0.69*(ra+rb)*c1;format(6);
t2=0.69*rb*c1;
freq1=1.45/((ra+2*rb)*c1);
w=ra/(ra+2*rb);format(6);
disp('on time = '+string(t1*10^6)+' μsecond');
disp('tof     = '+string(t2*10^6)+' μsecond');
disp('frequency = '+string(freq1)+' Hz');
disp('duty cycle = '+string(w));//no unit

