clc,clear
printf('Example 5.4\n\n')

V_L=866
VA=100*10^3
I_L=VA/(sqrt(3)*V_L)    //because VA=sqrt(3)*V_L*I_L
I_aph=I_L//full load and star connected alternator
V_ph=V_L/sqrt(3)

//Graph is plotted and V_oc_ph and I_asc_Ph is obtained for 
//SCC for I_asc=66.67 A,I_f=2.4 A
//OCC for I_f=2.4 A,V_oc_ph=240 V

//for measruemnt of impedance
V_oc_ph=240 //for I_f=2.4..From o.c.c graph
I_asc_ph=66.67 //for I_f=2.4...From s.c.c graph
Z_s=V_oc_ph/I_asc_ph
R_a=0.15
X_s=sqrt( Z_s^2-R_a^2 )

V_ph_FL=500
phi=acos(0.8)  //lagging pf
E_ph=sqrt((V_ph_FL*cos(phi)+I_aph*R_a)^2+(V_ph_FL*sin(phi)+I_aph*X_s)^2)
regulation=100*(E_ph-V_ph)/V_ph

printf('Full-load regulation at 0.8 lagging pf is %.2f percent ',regulation )
