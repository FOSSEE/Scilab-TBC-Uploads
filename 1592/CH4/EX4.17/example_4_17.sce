//Scilab Code for Example 4.17 of Signals and systems by
//P.Ramakrishna Rao
clear;
clc;
//Fourier Transform of x(t)
n=1;
for t=-10:0.1:10;
    x(1,n)=1/(1+t^2);
    n=n+1;
end
a = gca ();
a.y_location ="origin";
a.x_location ="origin";
t=-10:0.1:10;
plot(t,x);
xlabel ( 'Time in Second' );
title ('x(t)');
disp("By Duality Theorem Fourier Transform of x(t) is:");
disp("%pi*exp(-|w|)");
n=1;
for w=-10:0.1:10;
    X(1,n)=%pi*exp(-abs(w));
    n=n+1;
end
figure(1);
a = gca ();
a.y_location ="origin";
a.x_location ="origin";
w=-10:0.1:10;
plot(w,X);
xlabel ( 'Frequency in Radians/Second' );
title ('X(w)');
