clc,clear
printf('Example 2.7\n\n')

V=220,R_a=0.3,R_sh=110 //resistance of armature and shunt field winding
//no load
N_0=1000 //no load speed in r.p.m
I_L0 =6 //line current on no load
I_sh= V/R_sh //no load shnt current
I_a0 = I_L0 - I_sh //no load armature current
E_b0= V - I_a0*R_a //no load induced emf

//full load
I_sh_FL= V/R_sh
I_L_FL=50 //line current at full load
I_a_FL= I_L_FL - I_sh_FL//full load armature current
E_b_FL= V - I_a_FL * R_a //full load induced emf
//using speed equation, as treating phi as constant
N_FL=N_0 * (E_b_FL/E_b0)
printf('Speed on full load is %.2f r.p.m',N_FL)
