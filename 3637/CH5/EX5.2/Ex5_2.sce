//problem 2 pagenumber 5.95
//given
ra=5e3;//ohm
rb=ra;format(6);
c1=0.01e-6;//farad
//determine frequency dutycycle
freq1=1.44/((ra+2*rb)*c1);
w=(ra+rb)/(ra+2*rb);format(5);
disp('frequency = '+string(freq1)+' Hz');
disp('dutycycle = '+string(w));//no unit

