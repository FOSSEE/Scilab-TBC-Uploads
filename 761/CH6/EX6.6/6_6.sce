clc;
//page no 239
//prob no. 6.6
//An AM high-freq receiver with IF=1.8MHz tuned at freq 10MHz
f_sig=10;f_if=1.8;//All freq in MHz
//Determination of local oscillator freq f_lo
f_lo=f_sig+f_if;
//determination of freq. that cause IF response
m=[1 1 2 2];//values of m that are integer
n=[1 2 1 2];//values of n that are integer
for i=1:4
    fs1(i)=((m(i)/n(i))*(f_lo))+((f_if)/n(i));
end;
for i=1:4
    fs2(i)=((m(i)/n(i))*(f_lo))-((f_if)/n(i));
end;
disp('All freqs are in MHz',fs2,fs1,'The different freqs are');