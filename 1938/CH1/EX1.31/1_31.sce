clc,clear
printf('Example 1.31\n\n')

N_1=1200   //initial speed 
I_L1=200   //initial load current
V_t1=125
N_2=1000  //altered speed
R_a=0.04  //armature resistance
V_brush=2  //brush drop

// Initial Load
I_a1=I_L1
E_g1=V_t1+I_a1*R_a+V_brush  //induced emf

E_g2=E_g1*(N_2/N_1)  //Because E_g proportional to N during constant flux
R_L= V_t1/I_L1 //Load resistance

//Solving for I_L2 as follows
//V_t2=R_L*I_L2   //I_a2=I_L2
//V_t2=E_g2-(I_L2*R_2 + V_brush)
I_L2=(E_g2-V_brush)/(R_L+R_a)  //new current

printf('Load current at new speed is %.4f A           ',I_L2)
