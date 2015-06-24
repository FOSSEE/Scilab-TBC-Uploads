//Sampling Oscilloscope Concepts
fo=100;a=50;
s=(a-1)*fo/a;
B=100-s;
i=s/(2*B);
i=ceil(i);
disp(i,'The sampling frequency can at max divided by i');
disp(s,2*B,'range of sampling rate is between s and 2*B');
fo1=100;
a=50;
s1=(a-1)*fo1/a;
B1=400-4*s1;
j=s1/(2*B1);
j=ceil(j);
disp(j,'The sampling frequency can at max divided by j');
disp(s1,2*B1,'range of sampling rate is between s1 and 2*B1');