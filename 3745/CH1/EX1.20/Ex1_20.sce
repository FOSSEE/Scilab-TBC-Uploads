// Ex 20 Page 361

clc;clear;close;
// Given
//Ia=0.0004*(Va+40*Vg)**(3/2);// mA --eqn(1)
Va=250;//V
Vg=-3;//V
//mu=delVa/delVg
//differentiation wrt Vg eqn(1)
//(4*10**-6*3/2*(Va+40*Vg))**(1/2)*(mu+40)=0
mu=-40;//constant
printf("Amplification factor, mu = %.f",mu)
//differentiation wrt Va eqn(1)
//delIa/delVa=(4*10**-6*3/2*(Va+40*Vg))**(1/2)*(0+40)
gm=(4*10**-6*3/2)*(Va+40*Vg)**(1/2)*(0+40)*1000;// mA/V or S
printf("\n Mutual conductance, gm = %.2f S",gm)
//differentiation wrt Ia eqn(1) keeping Vg constant
//1=(4*10**-6)*3/2*(Va+40*Vg)**(1/2)*(delVa/delIa+0)
//ra=delVa/delIa
ra=1/((4*10**-6)*3/2*(Va+40*Vg)**(1/2))
printf("\n Plate resistance, ra = %.1f kohm",ra/1000)
