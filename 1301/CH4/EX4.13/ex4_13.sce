clc;
T=24*60*60;   //time in sec
re=6.4*10^6;  //radius of earth in m
g=9.8;         //gravitational constant in m/sec square
r=(((6.4*10^6*6.4*10^6)*9.8*(8.64*10^4*8.64*10^4))/(4*%pi*%pi))^(1/3);  //calculating r in metre
disp(r,"Radius in metre = ");  //displaying radius in metre
h=r-re;    //h =altitude above earth's surface
disp(h,"Height above the earths Surface in metre = ");  //displaying height above earth's surface in m
disp(h/1000,"Height above the earths Surface in kilometre = ");  //displaying height above earth's surface in km)