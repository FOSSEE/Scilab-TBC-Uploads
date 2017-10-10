clc
clear
//INPUT DATA
cp=1.005;//specific pressure
R=0.287;//gas constant
g=1.4;//constant
t1=303;//temperature in K
t3=1073;//temperature in K in case I
t5=1123;//temperature in K
Rp=4;//pressure ratio
p1=1;//atmospheric pressure in bar
p2=4;//exit pressure in bar


//CALCULATIONS
//case 1
t2=t1*(Rp^((g-1)/g));//Temperature in K
t4=t3/(Rp^((g-1)/g));//Temperature in K
Qs=cp*(t3-t2);//Heat supplied in kJ/kg
wc=cp*(t2-t1);//compressor work in kJ/kg
wt=cp*(t3-t4);//turbine work in kJ/kg
ng=((wt-wc)/(cp*(t3-t2)))*100;//Thermal efficiency in percentage

//case 2
//a regenerator of effectiveness 0.6 is added
t51=0.6*(t4-t2)+t2;//temperature in K
nbr=(((wt-wc)/(cp*(t3-t51))))*100;//Thermal efficiency eith regenerator in percentage
//case 3
pi=(p1*p2)^(1/2);//intermediate pressure
t21=t1*(pi)^((g-1)/g);//temperature in K
t41=t1*(pi)^((g-1)/g);//temperature in K
t61=t3/((Rp)^((g-1)/g));//temperature in K
t7=0.6*(t61-t2)+t21;//temperature in K
Qs1=cp*(t3-t7);//heat added in kJ/kg
wt1=cp*(t3-t61);//turbine work in kJ/kg
wc1=cp*((t41-t1)+(t41-t1));//compressor work in kJ/kg
nt=((wt1-wc1)/Qs1)*100;//Thermal efficiency in percentage
//case 4
t22=t1*(Rp)^((g-1)/g);//temperature in K
t42=t3/(pi)^((g-1)/g);//temperature in K
t62=t3/((pi)^((g-1)/g));//temperature in K
t72=t22+(0.6*(t62-t22));//temperature in K
wc2=cp*(t22-t1);//compressor work in kJ/kg
wt2=cp*((t3-t42)+(t3-t62));//turbine work in kJ/kg
Qs2=cp*((t3-t72)+(t3-t42));//heat added in kJ/kg
ns=((wt2-wc2)/Qs2)*100;//Thermal efficiency in percentage
//case 5
t23=t1*(pi)^((g-1)/g);//temperature in K
t43=t1*(pi)^((g-1)/g);//temperature in K
t73=t3/(pi)^((g-1)/g);//temperature in K
t93=t3/(pi)^((g-1)/g);//temperature in K
t53=0.6*(t93-t43)+t43;//temperature in K
Qs3=cp*((t3-t53)+(t3-t73));//heat added in kJ/kg
wt3=cp*((t3-t93)+(t3-t73));//turbine work in kJ/kg
wc3=cp*((t23-t1)+(t43-t1));//compressor work in kJ/kg
ns1=((wt3-wc3)/Qs3)*100;//Thermal efficiency in percentage


//OUTPUT
printf('CASE I \n (i)Compressor work %3.2f kJ/kg \n (ii)Turbine work %3.2f kJ/kg \n (iii)Thermal efficiency %3.1f percentage \n ',wc,wt,ng)
printf('CASE II \n (i)Compressor work %3.2f kJ/kg \n (ii)Turbine work %3.2f kJ/kg \n (iii)Thermal efficiency %3.1f percentage \n ',wc,wt,nbr)
printf('CASE III \n (i)Compressor work %3.2f kJ/kg \n (ii)Turbine work %3.2f kJ/kg \n (iii)Thermal efficiency %3.1f percentage \n ',wc,wt1,nt)
printf('CASE IV \n (i)Compressor work %3.2f kJ/kg \n (ii)Turbine work %3.2f kJ/kg \n (iii)Thermal efficiency %3.1f percentage \n ',wc2,wt2,ns)
printf('CASE V \n (i)Compressor work %3.2f kJ/kg \n (ii)Turbine work %3.2f kJ/kg \n (iii)Thermal efficiency %3.1f percentage \n ',wc3,wt3,ns1)














