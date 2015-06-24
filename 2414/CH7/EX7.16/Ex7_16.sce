clc;
close();
//page no 248
//prob no. 7.16
Kf=4;    //kHz/V
f0=100;  //kHz
//  Part a
vm=2;   //Volts
delta_f=Kf*vm; //kHz
f=f0+delta_f;      //kHz
disp(f,'Corresponding frequwncy to this input is',delta_f,'(a)  The change in frequency is');
//Part b
vm=-3;   //Volts
delta_f=Kf*vm; //kHz
f=f0+delta_f;      //kHz
disp(f,'Corresponding frequwncy to this input is',delta_f,'(b)  In this case,the change in frequency is');
