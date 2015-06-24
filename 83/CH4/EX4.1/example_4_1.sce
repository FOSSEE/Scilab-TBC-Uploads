//Chapter 4
//Example 4.1
//page 103
// to draw the per unit reactance diagram
clear;clc;
mvab=30; kvb=33; //MVA base and KVA base are selected

gen1_mva=30; gen1_kv=10.5; gen1_x=1.6;  //Generator No.1 details
gen2_mva=15; gen2_kv=6.6; gen2_x=1.2;  //Generator No.2 details
gen3_mva=25; gen3_kv=6.6; gen3_x=0.56;  //Generator No.3 details

t1_mva=15; t1_hv=33; t1_lv=11; t1_x=15.2; //Transformer T1 details
t2_mva=15; t2_hv=33; t2_lv=6.2; t2_x=16; //Transformer T1 details

tl_x=20.5; //Transmission line recatance

//Loads are neglected as said in the problem

tl_pu=(tl_x*mvab)/kvb^2;
t1_pu=(t1_x*mvab)/kvb^2;
t2_pu=(t2_x*mvab)/kvb^2;
gen1_kv_base=t1_lv;
gen1_pu=(gen1_x*mvab)/gen1_kv_base^2;
gen2_kv_base=t2_lv;
gen2_pu=(gen2_x*mvab)/gen2_kv_base^2;
gen3_pu=(gen3_x*mvab)/gen2_kv_base^2;

//diplaying the results on console

printf('Per unit impedance of the components of the given power system are as follows :\n\n');

printf('Transmission line: %0.3f \n\n',tl_pu);

printf('Transformer T1: %0.3f \n\n',t1_pu);

printf('Transformer T2: %0.3f \n\n',t2_pu);

printf('Generator 1: %0.3f \n\n',gen1_pu);

printf('Generator 2: %0.3f \n\n',gen2_pu);

printf('Generator 3: %0.3f \n\n',gen3_pu);

