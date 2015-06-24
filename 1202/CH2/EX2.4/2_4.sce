clear
clc

//Example 2.4
disp('Example 2.4')

mprintf('\n Important Note: Errata for book: Values of the parameters \n...
 meCe/heAe and meCe/wC should be 1 min each and not 0.5 min %s \n','')

Tibar=100;//deg C
Qbar=5000;//kcal/min
wc_inv=0.05;// 1/wc degC min/kcal

//(a)
Tbar=Tibar+wc_inv*Qbar;
mprintf('\n (a) Nominal steady state temperature= %i',Tbar)
mprintf(' degree celsius %s \n','')

//(b)
mprintf('\n Eqn 2-29 becomes 10 d2T/dt2 + 12 dT/dt + T = 370  with T(0)=350 %s \n','')
t=0:0.1:80; //Time values
Tt_2=350+20*(1-1.089*exp(-t/11.099)+0.084*exp(-t/0.901));//T(t) from order 2 equation

//(c)
mprintf('\n Eqn 2-29 becomes 12 dT/dt + T = 370 with T(0)=350 %s \n','')
Tt_1=350+20*(1-exp(-t/12));//T(t) from order 1 equation


plot2d(t,[Tt_2',Tt_1'],[2 5],rect=[0 350 80 370])
xtitle('Ex-2.4','Time(min)','$T(^0C)$');
a=legend("a Second order","b First order",position=4);
a.font_size=5;
a=get("current_axes");b=a.title;b.font_size=5;c=a.x_label;c.font_size=5;
c=a.y_label;c.font_size=5;
