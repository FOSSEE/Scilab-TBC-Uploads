//Example 1.22<i>
//Find whether the given signal is causal or not.
clear all;
clc;
t=-10:10;
a=.5;
for i=1:length(t)
    if t(i)<0 then
        x1(i)=0;
    else
        x1(i)=exp(a.*t(i));
    end
end
causal=%t;
for i=1:length(t)
    if t(i)<0 & x1(i)~=0 then
        causal=%f;
    end
end
disp(causal,"The statement that the system is causal is:");
//Example 1.22<ii>
//Find whether the given signal is causal or not.
clear all;
clc;
t=-10:10;
for i=1:length(t)
    if t(i)>0 then
        x2(i)=0;
    else
        x2(i)=exp(-2.*t(i));
    end
end
causal=%t;
for i=1:length(t)
    if t(i)<0 & x2(i)~=0 then
        causal=%f;
    end
end
disp(causal,"The statement that the system is causal is:");
//Example 1.22<iii>
//Find whether the given signal is causal or not.
clear all;
clc;
t=-10:10;
c=2;
for i=1:length(t)
    x3(i)=sin(c.*t(i));
    end
causal=%t;
for i=1:length(t)
    if t(i)<0 & x3(i)~=0 then
        causal=%f;
    end
end
disp(causal,"The statement that the system is causal is:");
//Example 1.22<iv>
//Find whether the given signal is causal or not.
clear all;
clc;
n=-10:10;
for i=1:length(n)
    if n(i)<-3 | n(i)>2 then
        x1(i)=0;
    else
        x1(i)=1;
    end
    end
causal=%t;
for i=1:length(n)
    if n(i)<0 & x1(i)~=0 then
        causal=%f;
    end
end
disp(causal,"The statement that the system is causal is:");
//Example 1.22<v>
//Find whether the given signal is causal or not.
clear all;
clc;
n=-10:10;
for i=1:length(n)
    if  n(i)>-2 then
        x2(i)=(1/2)^n(i);
    else
        x2(i)=0;
    end
    end
causal=%t;
for i=1:length(n)
    if n(i)<0 & x2(i)~=0 then
        causal=%f;
    end
end
disp(causal,"The statement that the system is causal is:");

