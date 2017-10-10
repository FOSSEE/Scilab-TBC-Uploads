clc;
//page no:2-26
//Example-2.13
//Goven carrier frequency is 1000kHz
fc=1000000;
fm1=300;
fm2=800;
fm3=1000;
fusb1=(fc+fm1)/1000;
disp(+'kHz',fusb1,'fusb1 is ');
flsb1=(fc-fm1)/1000;
disp(+'kHz',flsb1,'flsb1 is ');
fusb2=(fc+fm2)/1000;
disp(+'kHz',fusb2,'fusb2 is ');
flsb2=(fc-fm2)/1000;
disp(+'kHz',flsb2,'flsb2 is ');
fusb3=(fc+fm3)/1000;
disp(+'kHz',fusb3,'fusb3 is ');
flsb3=(fc-fm3)/1000;
disp(+'kHz',flsb3,'flsb3 is ');
