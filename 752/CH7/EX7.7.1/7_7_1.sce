clc;
//page no 236
//prob no. 7.7.1
// refer to example 7.3.1
// A broadcast receiver is tuned to a signal with
fs=950;//in KHz
IF=455;//in KHz
m=[1,2];
n=[1,2];
f0=fs+IF;
disp('The sum of frequencies are');
for i=1:1:2
    for j=1:1:2
fu1=n(j)/m(i) *f0 + 1/m(i) *IF;
disp(fu1);
end
end
disp('The difference of frequencies are');
for i=1:1:2
    for j=1:1:2
fu2=n(j)/m(i) *f0 - 1/m(i) *IF;
disp(fu2);
end
end