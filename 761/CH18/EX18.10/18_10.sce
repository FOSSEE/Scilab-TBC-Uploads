clc;
// page no 688
// prob no 18.10
// refer fig 18.9a)
fc_r=6870;// carrier freq of received signal in MHz
fc_t=6710;//carrier freq of transmitted signal in MHz
IF=70;//in MHz
// the freq of shift oscillator is 
fso=fc_r - fc_t;
disp('MHz',fso,'The freq of shift oscillator is ');
//the local oscillator freq is given as
flo=fc_t-IF;
disp('MHz',flo,'The local oscillator freq is ');
//from fig, mixer 3 will produce an o/p as
op_mix3=flo+fso;
disp('MHz',op_mix3,'O/P of Mixer 3 is');