// Example 4.10
// Mesh Analysis with a CCCS
// By inspection of figure 4.34,we find the resistance matrix to be
R=[10+4,-4;-4,4+7+3];
// i_a= i_1-i_2
//v_s=[6;(-24*i_1+24*i_2)]
//v_s=[6;0]+[0,0;-24,24]*[i_1;i_2]   -------equation 1
// Comparing Equation 1 with , [v_s]=[v_s_tilda]+[R_tilda]*[i]
v_s_tilda=[6;0];
R_tilda=[0,0;-24,24];
// using Equation [R-R_tilda]*[i]=[v_s_tilda]
i=(R-R_tilda)\v_s_tilda;
i_1=i(1,1);
i_2=i(2,1);
disp(i_1,"Current in Mesh 1(in Amps)=")
disp(i_2,"Current in Mesh 2(in Amps)=")
