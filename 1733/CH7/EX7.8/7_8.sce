//7.8
clc;
disp('For triac')
P=20000;
V=400;
I=P/(V*3^0.5);
printf("Current rating of traic=%.2f A",I)
PIV=2^0.5*V;
printf("\nPIV of traic=%.2f V",PIV)
disp('When two thyristors are connected in antiparallel')
I=I/2^0.5; //since each thyristor will conduct for half cycle
printf("Current rating =%.2f A",I)
PIV=2^0.5*V;
printf("\nPIV =%.2f V",PIV)