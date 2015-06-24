// Calculate the range of readings
clc;
fsd=1000;
TP=100;
Efsd=(1/100)*1000;
disp(Efsd,'magnitude of Error when specified in terms of full scale deflection (w)=')
disp('Thus the meter will read between 90W and 110W')
Etv=(1/100)*100;
disp(Etv,'magnitude of Error when specified in terms of true value (w)=')
disp('Thus the meter will read between 99W and 101W')