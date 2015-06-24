//ex3.6
V_Z=12;
V_IN=24;
I_ZK=1*10^-3;
I_ZM=50*10^-3;
Z_Z=0;
R=470;
//when I_L=0, I_Z is max and is equal to the total circuit current I_T
I_T=(V_IN-V_Z)/R;
I_Z_max=I_T;
if I_Z_max<I_ZM then
    I_L_min=0;
end
I_L_max=I_T-I_ZK;
R_L_min=V_Z/I_L_max;
disp(R_L_min,'minimum value of load resistance in ohms')
disp(I_L_min,'minimum curent in amperes')
disp(I_L_max,'maximum curent in amperes')