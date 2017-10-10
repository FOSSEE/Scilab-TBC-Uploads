fc1=960000;
fc2=1440000;
BW=480000;
f0=ceil((fc1*fc2)^0.5);
fave=(fc1+fc2)/2;
Q=f0/BW;
disp('kHz',f0/1000,"f0=");
disp('kHz',fave/1000,"fave=");
disp(' ',Q,"Q=");//The answers vary due to round off error in f0

