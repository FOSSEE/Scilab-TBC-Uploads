//3.5
clc;
I=20;
E_expected=2.5*I/100;
printf("Expected error=+/-%.2f mA",E_expected)
disp('Actual reading for 5mA indication will be 4.5mA to 5.5mA')
disp('Actual reading for 15mA indication will be 14.5mA to 15.5mA')
E_5mA=(0.5/5)*100;
printf("Error for 5mA reading=%.2f percent",E_5mA)
E_15mA=(0.5/15)*100;
printf("\nError for 15mA reading=%.2f percent",E_15mA)