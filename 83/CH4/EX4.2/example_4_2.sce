//Chapter 4
//Example 4.2
//page 104
// To draw the per unit reactance diagram when pu values are specified based on euipment rating
clear;clc;
mvab=30; kvb=11; //MVA base and KVA base are selected in the circuit of generator 1

gen1_mva=30; gen1_kv=10.5; gen1_x=0.435;  //Generator No.1 details
gen2_mva=15; gen2_kv=6.6; gen2_x=0.413;  //Generator No.2 details
gen3_mva=25; gen3_kv=6.6; gen3_x=0.3214;  //Generator No.3 details

t1_mva=15; t1_hv=33; t1_lv=11; t1_x=0.209; //Transformer T1 details
t2_mva=15; t2_hv=33; t2_lv=6.2; t2_x=0.220; //Transformer T1 details

tl_x=20.5; //Transmission line recatance

//Loads are neglected as said in the problem

tl_pu=(tl_x*mvab)/t1_hv^2;
t1_pu=t1_x*(mvab/t1_mva);
t2_pu=t2_x*(mvab/t2_mva);
gen1_pu=gen1_x*(mvab/gen1_mva)*(gen1_kv/kvb)^2;
gen2_kv_base=t2_lv;
gen2_pu=gen2_x*(mvab/gen2_mva)*(gen2_kv/gen2_kv_base)^2;
gen3_kv_base=t2_lv;
gen3_pu=gen3_x*(mvab/gen3_mva)*(gen3_kv/gen3_kv_base)^2;

//diplaying the results on console

printf('Per unit impedance of the components of the given power system are as follows :\n\n');

printf('Transmission line: %0.3f \n\n',tl_pu);

printf('Transformer T1: %0.3f \n\n',t1_pu);

printf('Transformer T2: %0.3f \n\n',t2_pu);

printf('Generator 1: %0.3f \n\n',gen1_pu);

printf('Generator 2: %0.3f \n\n',gen2_pu);

printf('Generator 3: %0.3f \n\n',gen3_pu);

