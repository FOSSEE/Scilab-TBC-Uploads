//Find (a) the voltage-gain ratio Av ¼ vL=vi, (b) the current-gain ratio Ai ¼ iL=ii, and (c) the output impedance Ro.
//Example 7.10 page no 213
clear
clc
Rg=100      //kΩ
ri=5
vgs=(Rg/(Rg+ri))
gm=0.0025
printf("\n The value of vgs=%0.3f vi",vgs)
rds=25
Rd=2            //kΩ
Rl=2            //kΩ
Req=(rds*Rd*Rl*10^3)/(2*Rl*Rd+rds*(Rl+Rd))
printf("\n The value of Req=%0.3f Kohm",Req)
Av=-2*gm*vgs*Req
printf("\n The value of Av=%0.3f ",Av)
Ai=((Av*(Rg+ri))/Rl)
printf("\n The value of Ai=%0.3f ",Ai)
R0=(Rd*rds)/(2*Rd+rds)
printf("\n The value of R0=%0.3f kOhm",R0)
