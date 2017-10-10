disp("Pout=I*V");
I=14*10^-3;
V=0.425;
Pout=I*V;
printf('\n The value of Pout is %fW',Pout);
disp("Pin=li*A");
li=50*10^-1;//say li=light intensity
A=0.01;//say A=surface area
Pin=li*A;
printf('\n The value of Pin is %fW\n',Pin);
disp("η=(Pout/Pin)*100");
n=(Pout/Pin)*100;
printf('\n The photo voltaic efficiency is %fpercent',n);