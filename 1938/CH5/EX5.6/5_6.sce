clc,clear
printf('Example 5.6\n\n')

phi=acos(0.8)
VA=1000*10^3
V_L=1905
V_ph=V_L/sqrt(3)
R_a=0.2//Armature reactance per phase

//Part(i)
//Ampere-turn method
I_L=VA/(sqrt(3)*V_L)
I_aph=I_L
V_dash=V_ph+I_aph*R_a*cos(phi)//V_dash is a dummy quantity and has no significance..it's used only for mapping correcponding current
F_o=32 //F_o corresponds to voltage V_dash=1148.5 from O.C.C graph
F_AR=27.5 //Field current required to circulate full-load short circuit current of 303.07A.From SCC F_AR=27.5
F_R = sqrt(    F_o^2 + F_AR^2-2*F_o*F_AR*cos(phi+%pi/2) )//Using Cosine rule

// for F_R=53.25, E_ph=1490 V from O.C.C
E_ph=1490
regulation1=100*(E_ph-V_ph)/V_ph
printf('Regulation on full-load by ampere-turn method is %.2f percent',regulation1)

//Part (ii)
//Synchronous Impedance method

I_sc=I_L
I_aph2=I_sc
I_f=27.5

V_OC_ph=1060 //corresponding to I-f=27.5 in the graph
Z_s=V_OC_ph/I_aph2
X_s=sqrt(Z_s^2-R_a^2)

E_ph2= sqrt( (V_ph*cos(phi)+I_aph2*R_a)^2+(V_ph*sin(phi)+I_aph2*X_s)^2 )   //from phasor diagram
regulation2=100*(E_ph2-V_ph)/V_ph
printf('\nRegulation on full-load by synchronous impedance method is %.2f percent',regulation2)
