clc,clear
printf('Example 5.28\n\n')

V_L=2000,V_ph=V_L/sqrt(3)
VA=1000*10^3
I_L=VA/(sqrt(3)*V_L)    //because VA=sqrt(3)*V_L*I_L
I_aph=I_L

I_f=28.5//for this I_aph=288.67513 as obtained from SCC graph
V_oc_ph=1060//for I_f=28.5 as obtained fromOCC graph
Z_s=V_oc_ph/I_aph
R_a=0.2 //armature effective resistance
X_s=sqrt( Z_s^2-R_a^2 )

//Part(i)
phi1=acos(0.8)//lagging
E_ph1=sqrt((V_ph*cos(phi1)+I_aph*R_a)^2+(V_ph*sin(phi1)+I_aph*X_s)^2)
regulation1=100*(E_ph1-V_ph)/V_ph
printf("(i)Full-load percentage regulation at 0.8 pf lagging is %.2f percent",regulation1)

//Part(ii)
phi2=acos(0.8)//leading
E_ph2=sqrt((V_ph*cos(phi2)+I_aph*R_a)^2+(V_ph*sin(phi2)-I_aph*X_s)^2)
regulation2=100*(E_ph2-V_ph)/V_ph
printf("\n(ii)Full-load percentage regulation at 0.8 pf leading is %.2f percent\n\n",regulation2)
printf('Note that the answer mismatches because of calculation mistake done in the last step of part 1')
