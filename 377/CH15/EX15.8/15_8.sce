disp("Voc=k*log(Il/Is)");
k=0.026;//say k=K*T/q
Il=100*10^-3;
Is=1*10^-9;
Voc=k*log(Il/Is);
printf('\n The value of Voc is %1.2fV',Voc);
disp("P=(Il*V)-(Is*exp((V/k)-1))");
V=0.35;
P=(Il*V)-(Is*exp((V/k)-1));
printf('\n The Output power is %f*10^-4W',P*10^4);