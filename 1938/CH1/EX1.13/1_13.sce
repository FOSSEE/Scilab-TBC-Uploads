clc,clear
printf('Example 1.13\n\n')

//part(1)
E_o=240  //on no-load

//Draw horizontal line from 240 V, to intersect OCC at A. corresponding I_f is 2.25 A
//The slope pf OA is corresponding R_sh
I_f=2.25  //Corresponds to 240 V when intersected OCC
R_sh=240/I_f  //shunt resistance
printf('(i)Field resistance that gives 240 V on no-load is %.2f ohms \n',R_sh)

//Part(ii)
N1=1000 //speed of shunt generator in rpm
I_f=1

//Draw line OP tangential to OCC at N1=1000 r.p.m.
//Select I_f=1A i.e. point R
//Draw vertical from R to intersect OP at S and OA at T....this gives RT=105 and RS=159
//At critcal speed generator just fails to build up

RT=105,RS=159
N_C=N1*RT/RS //Critical speed
printf('(ii)Critical speed is %.2f r.p.m ',N_C)
