//problem 8 pagenumber 5.99
//given
r1=9e3;//ohm
k1=1.38*10^-23;format(6);
t1=298;//k
//determine voltage current spectraldensities rmsnoise
r1=r1;
er=sqrt(4*k1*t1*r1);
i1=er/r1;
er12=1/er;
w=20e3-20;
er1=nthroot(er,w);
disp('voltage = '+string(er*10^9)+' nanovolt/√(Hz)');format(5);
disp('current = '+string(i1*10^12)+' pA/√(Hz)');
disp('rms voltage = '+string(er1)+' volt');//error in book
