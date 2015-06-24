clc;
//Example 17.3
//page no. 201
printf("\Example 17.3 page no 201\n\n");
// a gas stream in a process
P_l_m=4.4// minor pressure loss for duct work,valves etc,in
P_l_mz=6.4//major pressure loss due to pieces of equipment,in
P_drop=P_l_m+P_l_mz//total pressure drop
printf("\n total pressure P_drop=%f in H20",P_drop);
//applying eq 17.7
q=6500//flow rate ,acfm
neta=0.63//overall fan-motor effficiency 
bhp=1.575e-4*q*P_drop/neta//brake horse power required
//1.575e-5 is aconversion factor for horse power
printf("\n brake horse power bhp=%f bhp",bhp);
