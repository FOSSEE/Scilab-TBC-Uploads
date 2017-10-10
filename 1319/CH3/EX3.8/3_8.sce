//To measure power by two wattmeter method

clc;
clear;

pf=0.85 // Power Factor

Po=37.3*(10^3); // Power Output

eff=90/100; // Efficiency

V=500; // Rated Voltage

Pi=Po/eff; // Power Input

phi=acosd(pf); // Power Factor angle

printf('W1 + W2 = %g kW \n',Pi/1000)
printf('tan(phi) = square root (3)*(W2-W1)/(W2+W1) = %g \n',tand(phi))

x=Pi; // Let x = W1+W2

y= tand(phi)*x/(sqrt(3)); // Let y = W2-W1

printf('W1 + W2 = %g kW \n',x/1000)
printf('W2 - W1 = %g kW \n',y/1000)
printf('W2 = %g kW \n',(x+y)/(2*1000))
printf('W1 = %g kW \n',(x-y)/(2*1000))







