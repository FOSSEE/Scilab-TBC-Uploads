//example 11.3
clc; funcprot(0);
// Initialization of Variable
b=2.0;
a=4.0;
gamm=9.8*10^3;//gamma
pi=3.14;
Fr=integrate('gamm*sin(pi*60/180)*b*y','y',6,10);
yr=gamm*sin(pi*60/180)/Fr*b*integrate('y^2','y',6,10);
disp(yr,"location of resultant weight in m");
//alternatively
yr1=b*a^3/12/b/a/8+8;
disp(yr1,"location of resultant weight in m");
clear()
