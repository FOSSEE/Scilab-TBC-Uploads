clc
disp("Problem 11.14")
printf("\n")

printf("Given")
disp("Power =1000kW ; pf=0.5(lag)")
disp("Voltage source is 5kV")
disp("Improved power factor is 0.8")

//Before improvement
P=1000*10^3;
pf=0.5;V=5*10^3;
S=(P/pf)*10^-3
I=S/V

//After improvement
P=1000*10^3;
pf=0.8;V=5*10^3;
S=(P/pf)*10^-3
I1=S/V

disp("Current is reduced by ")
red=((I-I1)/I)*100
printf("Percentage reduction in current is %3.1fpercent\n",red)

