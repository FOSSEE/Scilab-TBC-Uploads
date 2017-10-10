//problem 3 pagenumber 5.96
//given
freq1=2e3;//hz
w=0.75;format(6);
c1=0.1e-6;//farad
//determine ra rb
//for 0.75 dutycycle rb=0.5*ra
ra=1.44/freq1*(1/(c1*2));
rb=0.5*ra;
disp('Ra = '+string(ra)+' ohm');
disp('Rb = '+string(rb)+' ohm');
disp('C1 = '+string(c1*1e6)+' μfarad');



