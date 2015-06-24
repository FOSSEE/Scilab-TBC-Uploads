//Find dft of the following sequence
//Example 8.29.1
clc;
n=-10:10;
for i=1:length(n)
    if n(i)==0 then
        x(i)=1;
    else
        x(i)=0;
    end
end
y=fft(x,-1);
disp(y,'The dft of the sequence is:');
//Find dft of the following sequence
//Example 8.29.2
clc;
n=-10:10;n0=2;
for i=1:length(n)
    if n(i)==n0 then
        x(i)=1;
    else
        x(i)=0;
    end
end
y=fft(x,-1);
disp(y,'The dft of the sequence is:');
//Find dft of the following sequence
//Example 8.29.3
clc;
n=-10:10;a=2;
for i=1:length(n)
   x(i)=a^n(i);
end
y=fft(x,-1);
disp(y,'The dft of the sequence is:');

