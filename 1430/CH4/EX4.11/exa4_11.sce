// Example 4.11
// Mesh Analysis of a Current Amplifier
R=[37 -1 0;-1 41 -4;0 -4 19]; // Resistance matrix
//v_a=6*i_1 , v_b=4*(i_3-i_2)
// [v_s]=[30*i_s;0;0]+[0 0 0;-864 0 0 ; 0 96 -96]*[i_1;i_2;i_3]
i_s=10^-3; // Assumption
R_tilda=[0 0 0;-864 0 0;0 96 -96];
v_s_tilda=[30*i_s;0;0];
// Using Equation, [R-R_tilda][i]=[v_s_tilda]
i=(R-R_tilda)\v_s_tilda
i_1=i(1,1);
i_2=i(2,1);
i_3=i(3,1);
A_i=i_3/i_s; // Gain Of Current Amplifier
disp(A_i,"Gain of Current Amplifier is=")
