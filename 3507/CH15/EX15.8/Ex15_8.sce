//chapter15
//example15.8
//page329

del_Ic=100d-3 // ampere
del_Vce=12 // V
Rl=5 // ohm

//case 1 : louspeaker directly connected
V=del_Ic*Rl
P=V*del_Ic

//case2 : loudspreaker transformer coupled
R_primary=del_Vce/del_Ic // for maximum power transfer the primary resistance should be equal to R
n=(R_primary/Rl)^0.5
V_secondary=del_Vce/n
Il=V_secondary/Rl
P_1=Il^2*Rl

printf("case1 : loudspeaker connected directly \n      power transferred to loudspeaker = %.3f mW \n",P*1000)
printf("case2 : loudspeaker is transformer coupled \n      power transferred to loudspeaker = %.3f mW \n",P_1*1000)
