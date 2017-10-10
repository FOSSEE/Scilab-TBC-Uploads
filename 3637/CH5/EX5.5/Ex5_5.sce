//problem 5 pagenumber 5.97
//given
t1=4;//second
t2=2;//second
c1=1e-6;//farad
//detemine ra rb
t12=t1+t2;
w=t1/t12;
//ra=0.97*rb
rb=(t1/(0.693*c1))/(1+0.97);
ra=0.97*rb;format(5);
disp('Ra = '+string(ra/10^6)+' Mohm');
disp('Rb = '+string(rb/10^6)+' Mohm');


