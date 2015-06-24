//chapter 19
//example 19.4
//page 821
printf("\n")
printf("given")
N1=60;N2=10;Rl=16;Rpy=0;R6=56;Vcc=27;Vce=.5;n=.79;
disp(" Referred laod")
rl=(N1/N2)^2 *Rl
disp(" tatol ac load line in series with each of Q2 and Q3")
Rl=rl+R6+Rpy
disp(" peak primary current")
Ip=(Vcc-Vce)/Rl
disp("peak primary voltage")
Vp=Vcc-Vce-(Ip*R6)
disp("power delivered to primary")
Po=.5*Vp*Ip
disp(" power delivered  to the load")
Po=Po*n//n is power efficiency
