clear
clc
//to find most probable speed,average speed,root-mean square speed of oxygen

//Given:
//temperature
T = 300//in K
//molar gas constant
R = 8.31//in J/mol.K
//molar mass
M = 0.032//in Kg/mol

//Solution:
//applying formula for most probable speed
//most probable speed of oxygen
vp = sqrt((2*R*T)/(M))//in m/s
//applying formula for average speed
//average speed of oxygen
vav = sqrt((8*R*T)/(%pi*M))//in m/s
//applying formula for root-mean square speed
//root-mean square speed of oxygen
vrms = sqrt((3*R*T)/(M))//in m/s
vp = round(vp)
a = vav/vp
a1 = vrms/vp
a1 = nearfloat("succ",1.225)

printf ("\n\n Most probable speed of oxygen vp = \n\n %3i m/s" ,vp);
printf ("\n\n Average speed of oxygen vav = \n\n %3i m/s" ,vav);
printf ("\n\n Root-mean square speed of oxygen vrms = \n\n %3i m/s" ,vrms);
printf ("\n\n For any gas vp:vav:vrms = 1:%.3f:%.3f" ,a,a1);
