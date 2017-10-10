//To write KVL equation of the given circuits.
clc;
k=0.5
wL_1=4
wL_2=9
wM=k*(wL_1*wL_2)               //ohm
Z_1=[3-%i*1  -3-%i*2;-3-%i*2  8+%i*4]                  //Impedance matrix of circuit 2.56(a)
Z_2=[3-%i*1  -3-%i*8;-3-%i*8  8+%i*4]                  //Impedance matrix of circuit 2.56(b)
