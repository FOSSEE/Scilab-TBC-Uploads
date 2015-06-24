clc,clear
printf('Example 1.19\n')
printf('Refer to code for explanation\n\n')

N_1=300,N_2=375 //generator speeds

//E_g2=E_g1*(N_2/N_1)
//Using this new table OCC at N_2=375 is made
//Draw a line with slope R_sh=40 through origin which cuts this OCC at 248
//I_f_table=[0,2,3,4,5,6,7]
//Arm_vol_table=[9.375,115,165,202.5,228.75,237.5,265]

//part(i)
//at V=200 volts, I_f=3.9 from the graph
V=200
I_f=3.9
R_sh2=V/I_f,R_sh=40
printf('Additional resistance required is %.3f ohms  ',R_sh2-R_sh)

//part(ii)
V_t=200
I_f=V_t/R_sh
E_g=228.75   //For this I_f from the table 
R_a=0.4
I_a=(E_g-V_t)/R_a   //Because E_g=V_t + I_a*R_a
I_L=I_a-I_f
printf('\nLoad current supplied by the generator is %.3f A',I_L      )
