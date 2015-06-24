//caption:find arithmetic mean,standard deviation and probable error of onereading
//Ex2.15
clc
clear
close
x1=30.30//level of liquid(in mm)
x2=30.25//level of liquid(in mm)
x3=30.40//level of liquid(in mm)
x4=30.00//level of liquid(in mm)
n=4//numberof readings
x=(x1+x2+x3+x4)/n
disp(x,'arithmatic mean(in mm)=')
d1=x1-x
d2=x2-x
d3=x3-x
d4=x4-x
S=((d1^2+d2^2+d3^2+d4^2)/(n-1))^0.5
disp(S,'standard deviation(in mm)=')
P=0.6745*S
disp(P,'probable error(in mm)=')