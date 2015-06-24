clc,clear
printf('Example 1.16\n\n')

V_t=550  //Terminal voltage
R_lamp=500 //Each lamp
I_lamp=V_t/R_lamp  //each lamp ; V_t because all lamps are in parallel

I_L=20*I_lamp  //there exist 20 lamps
R_sh=25,R_a=0.06,R_se=0.04  //resistance of shunt winding,armature,series field
I_sh=V_t/R_sh //current throough shunt winding
I_a=I_L+I_sh//armature current
E=V_t + I_a*(R_a+R_se)  //generated emf

printf('Armature current and generated e.m.f is %.0f A and %.1f V respectively ',I_a,E )
