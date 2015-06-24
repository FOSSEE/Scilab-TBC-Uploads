//Ex:2.1
clc;
clear;
close;
marked=220;//in ohms
measured=207;//in ohms
err=marked-measured;
tol=(err/marked)*100;
printf("Tolerance = %f %%",tol);
