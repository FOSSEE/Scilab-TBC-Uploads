clear
//Given
Vf=0.3            //V
If=4.3*10**-3     //A
Vc=0.35
Va=0.25
Ic=6*10**-3
Ia=3*10**-3

//Calculation
Rdc=Vf/If
Vf1=Vc-Va
If1=Ic-Ia
Rac=Vf1/If1

//Result
printf("\n (i) D.C. resistance is %0.2f  ohm",Rdc)
printf("\n (ii) A.C. resistance is %0.2f  ohm",Rac)
