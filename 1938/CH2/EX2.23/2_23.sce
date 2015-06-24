clc,clear
printf('Example 2.23\n\n')

V=250, 
R_a=0.4 , R_sh=100 //armature and shunt field resistance
I_sh1=V / R_sh
P_out_FL = 10 * 735.5
eta=85/100 //efficiency
P_in= P_out_FL/eta
I_L1= P_in /V
I_a1= I_L1 - I_sh1

// T (prop.) phi*I_a (prop.) I_sh*I_a    because phi (prop.) I_sh
//Bu torque is constant.. 
Ia2_Ish2= I_a1*I_sh1
E_b1= V - I_a1*R_a

//N (prop.) E_b/I_sh
//put E_b2= V - I_a2*R_a  and solving further for I_sh2 we get, I_sh2^2 - 1.8824 I_sh2 +0.2417=0
p=[1 -1.8824 0.2417]
roots(p) 
I_sh2=ans(1)
//root 1 was considered because its always easier to attain root(1) because less resistacne is needeed
//R_x in series with field
R_x = (V/I_sh2) -R_sh   //because I_sh2 = V/(R_sh + R_x)
printf('Extra Resistance to be added  = %.2f ohms',R_x)
