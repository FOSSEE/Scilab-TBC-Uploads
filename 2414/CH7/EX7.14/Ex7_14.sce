clc;
close();
//page no 242
//prob no. 7.14
delta_f1=2;   //kHz
fc1=100;      //kHz
W=5;          //kHz
fc2=3*fc1;
disp(fc2,'(a)  The output center frequency =');
delta_f2=3*delta_f1;
disp(delta_f2,'(b)  The output frequency deviation=');
D1=delta_f1/W;
D2=3*D1;
disp(D2,'(c)  The output deviation ratio =');
