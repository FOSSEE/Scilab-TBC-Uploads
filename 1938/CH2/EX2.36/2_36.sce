clc,clear
printf('Example 2.36\n\n')

N_1=1000
I_1=50,I_a1=I_1
V=250
R_x=4.4, R_t=0.6   //R_t = R_a+R_se
E_b1=V - I_a1*(R_t)

//T (prop.)I_a^2  , T (prop.) N^2  .... hence N (prop.) I_a
//N (prop.) E_b /I_a
//combining both , E_b (prop.) I_a^2
//using E_b2 = V - I_a2*(R_a + R_se + R_x) and solving for I_a2 , we get 0.088 I_a2^2 +5 I_a2 -250=0
p=[0.088 5 -250] 
roots(p)
I_a2=ans(2) //root(1) is ignored as it is -ve
E_b2 = V - I_a2*(R_t + R_x) 
N_2=N_1*(E_b2/E_b1)*(I_a1/I_a2)
printf('Motor speed = %.2f r.p.m',N_2)
