// example:-9.4,page no.-488.
// program to design a maximum flat low pass filter with cut off frequency of 2 GHZ.
fc=2*10^9;f=3*10^9;
w=2*%pi*f;
wc=2*%pi*fc;
x=abs(w/wc)-1;
// from table we can see that N=5 will be sufficient.
// then prototype element values are:-
g1=0.618;g2=1.618;g3=2.000;g4=1.618;g5=0.618;
disp(g1,'g1 = ')
disp(g2,'g2 = ')
disp(g3,'g3 = ')
disp(g4,'g4 = ')
disp(g5,'g5 = ')