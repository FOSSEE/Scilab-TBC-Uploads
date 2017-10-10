clc;
P=10^8;    //power in Watt
c = 3*10^8;
t=60*60*24;   //t in seconds for 1 day
E=P*t;      //calculating energy in Joule using E=P*t
m=E/(c*c);  //calculating m in kg using Einstein's equation:E=m*c*c
disp(m,"Mass in kg = ");  //displaying result