close();
clear;
clc;
//power of shunt motor 'P', full load line current 'I', armature resistance 'Ra', field resistance 'Rf', brush contant drop 'Vb', core and friction loss 'Pc'
Vb = 2; //V
Ra = 0.25; //ohm
Rf = 230; //ohm
P = 10; //hp
V = 230; //V
I = 40; //A
Pc = 380; //W
//input power 'Pi'
Pi = I*V; //W
//field-resistance loss 'Pf'
Pf = (V/Rf)^2 * Rf; //W
//armature resistance loss 'Pa'
Pa = (I-1)^2*Ra; //W
//stray-load loss 'Ps'
Ps = (1/100)*P*746; //W
//brush-contact losses 'Pb'
Pb = Vb*(I-1); //W
//total loss 'loss'
loss = Pf+Pa+Ps+Pb+Pc;
//output power 'Po'
Po = Pi-loss; //W
//efficiency 'n'
n = Po/Pi;
mprintf("Efficiency of motor, n = %0.1f %%",n*100);