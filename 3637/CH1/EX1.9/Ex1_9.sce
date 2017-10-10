//Example 9 Page No: 1.87
//given
iin=30e-9;//A
a=1e5;//gain
rin=1000;//ohm
//determine output offset voltage
vid=iin*rin;
v0=a*vid; 
disp('Differential input voltage = '+string((vid*1e6))+' μvolt');
disp('Output offset = '+string(v0)+' V');

