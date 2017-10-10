// Chapter 4 Exapmle 5//
clc
clear
// load factor of consumer=lf,monthly consumption=mc,maximum demand=md//
lf=0.35;
mc=504;// in kWh//
md=mc/(lf*24*30);
printf("\n Maximum Demand = %.2f kW\n",md);
// rate of electricity per maximum demand=r1,per kWh=r2,tc=total cost per kWh//
r1=180;// in Rs//
r2=2;
r=(r1*md)+(r2*mc);
tc=r/mc;
printf("\n Overall cost per kWh = %.2f rupees\n",tc);
// consumption increased by 20%,so new consumption=mc1 //
mc1=mc*1.20;
lf1=lf;// load factor remains the same//
md1=mc1/(lf*24*30);
r=(r1*md1)+(r2*mc1);
tc1=r/mc1;
printf("\n Overall cost per kWh with consumption increasing by 20 percent = %.2f rupees\n",tc1);
// load factor increased to 40%,so new maximum demand=md2//
lf2=0.40;
mc2=mc;
md2=mc/(lf2*24*30);
r=(r1*md2)+(r2*mc2);
tc2=r/mc2;
printf("\n Overall cost per kWh if power factor increases to 40 percent= %.2f rupees\n",tc2);
