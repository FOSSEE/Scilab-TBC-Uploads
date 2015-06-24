//EX6_5 PG-6.34
clc
Vbb=30;
Vv=0.8;//valley potential
Iv=15e-3
Vd=0.7;//cut in voltage of diode 
n=0.33;//stand off ratio
Vp=18;
Ip=35e-6;
printf(" For turn ON")
printf("\n  Rt<(Vbb-Vp)/Ip")
Rt=(Vbb-Vp)/Ip;
printf("\n  therefore Rt<%.0f 0hm \n",Rt)
printf(" \n  For turn OFF")
printf("\n  Rt>(Vbb-Vv)/Iv")
Rt1=(Vbb-Vv)/Iv
printf("\n  therefore Rt>%.0f 0hm \n",Rt1)
printf("\n  So range of Rt is %.3f kohm< Rt <%.2f kohm \n",Rt1*1e-3,Rt*1e-3)


