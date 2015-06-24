clear; clc; close;

Iio = 5*10^(-9);
Iib = 30*10^(-9);

Iib_positive = Iib + Iio/2;
Iib_negative = Iib -Iio/2;

disp(Iib_positive,'Positive input bias current(Amperes) = ');
disp(Iib_negative,'Negative input bias current(Amperes) = ');

