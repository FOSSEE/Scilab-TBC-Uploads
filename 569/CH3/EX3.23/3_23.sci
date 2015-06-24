//to find the arithematic mean, maen deviation,standard deviation, prpobable error of 1 reading, standard deviation and probable error of mean, standard deviation of standard deviation

clc;
T=[397 398 399 400 401 402 403 404 405];
f=[1 3 12 23 37 16 4 2 2];
Tf=sum(abs(T.*f));
disp(Tf/sum(f),'mean temp(deg C)');
d=[-3.78 -2.78 -1.78 -.78 .22 1.22 2.22 3.22 4.22];
disp(sum(f.*d)/sum(f),'mean deviation(deg C)');
disp(sqrt(sum(f.*d^2)/sum(f)),'standard deviation(deg C)');
disp(.6745*sqrt(sum(f.*d^2)/sum(f)),'probable error of 1 reading(deg C)');
disp((.6745*sqrt(sum(f.*d^2)/sum(f)))/sqrt(sum(f)),'probable error of mean(deg C)');
disp((sqrt(sum(f.*d^2)/sum(f)))/sqrt(sum(f)),'standard deviation of mean(deg C)');
disp((sqrt(sum(f.*d^2)/sum(f)))/sqrt(sum(f)*2),'standard deviation of standard deviation(deg C)');

 