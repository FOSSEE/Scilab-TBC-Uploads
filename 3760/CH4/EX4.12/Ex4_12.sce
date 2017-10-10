clc;
D=50;//diameter of commutator
N=1000;//speed of rotation of commutator in rpm
Wb=1.5;//brush width
V=%pi*D*N/60;//peripheral velocity of commutator
Tc=(Wb*1000)/V;//time of commutation in ms
printf('Time of commutation is %f ms.',Tc);
