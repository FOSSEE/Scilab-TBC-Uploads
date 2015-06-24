clc;
//page no 167
//prob no. 5.12
//All frequencies in Hz
B=200*10^3; //The bandwidth allocated by FCC (in Hz)
fl=88*10^6;fh=108*10^6;  //FM broadcast band low and high end freq
Q=fl/B;
disp(Q,'(a)  At the low end of FM band ,Q required is');
Q=fh/B;
disp(Q,'    At the high end of FM band ,Q required is');
fIF=10.7*10^6;// IF frequwncy (in Hz)
Q=fIF/B;
disp(Q,'(b)  At the IF frequency ,Q required is ');
disp('(c)   Signal freq = 88 to 108 MHz')
disp('     LO freq = 98.7 to 118.7 MHz')
disp('     Image freq = 109.4 to 129.4MHz')
disp('(d)   Signal freq = 88 to 108 MHz')
disp('     LO freq = 77.3 to 97.3 MHz')
disp('     Image freq = 66.6 to 86.6MHz')
