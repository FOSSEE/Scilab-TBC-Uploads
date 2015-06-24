clear ;
clc ;
a = 12;//length of each side in inches
d = 9/8;//diameter of each reinforced bar in inches
r = 3;//distance of centre from the edges in inches
p_c = 600;//in lb/in^2
n = 18;//modular ration E_s/E_c
A_s = 4*0.25*%pi*d^2;//in in^2
A_c = a^2 - A_s;//in in^2
p_s = n*p_c;//in lb/in^2
P = p_s*A_s+p_c*A_c;//safe central load in lb-wt
printf('Safe central load = %d lb-wt',P);
printf('\n Of this, the reinforcing bars carry %d lb-wt',p_s*A_s);

//there is an error in the answer given in textbook.
