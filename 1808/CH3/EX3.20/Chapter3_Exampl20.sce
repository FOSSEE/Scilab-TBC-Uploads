clc
clear
//INPUT DATA
Rc=15;//compression ratio
r1=1.84;//cutoff ratio
r2=1.98;//cutoff ratio
g=1.4;//constant
p1=101.325;//Pressure in kN/m^2
Rc3=17;//compression ratio
r3=1.84;//cutoff ratio
Rc4=18;//compression ratio
r4=1.88;//cutoff ratio

//CALCULATIONS
nd1=(1-(((1/(Rc^(g-1))))*(((r1^g)-1)/((r1-1)*g))))*100;//Air standard efficiency in precentage
pm1=(p1/((Rc-1)*(g-1)))*(((Rc^g)*g*(r1-1))-(Rc*((r1^g)-1)));//Mean effective pressure in kN/m^2
nd2=1-(((1/(Rc^(g-1))))*(((r2^g)-1)/((r2-1)*g)));//change in efficiency in precentage
ndd1=nd1-nd2;//change in efficiency in precentage
pm2=(p1/((Rc-1)*(g-1)))*(((Rc^g)*g*(r2-1))-(Rc*((r2^g)-1)));//Mean effective pressure in kN/m^2
pmii=((pm2-pm1)/pm1)*100;//Increase in mep in percentage
nd3=(1-(((1/(Rc3^(g-1))))*(((r3^g)-1)/((r3-1)*g))))*100;//increased efficiency in precentage
ni=nd3-nd1;//increased efficiency in percentage
pm3=(p1/((Rc3-1)*(g-1)))*(((Rc3^g)*g*(r3-1))-(Rc*((r3^g)-1)));//Increase in Mean effective pressure in kN/m^2
pmi=((pm3-pm1)/(2*pm1))*100;//Increase in Mean effective pressure in percentage
K=((r4-1)/(Rc4-1))*100;//change in cutoff of stroke

//OUTPUT
printf('(a)Air standard efficiency is %3.2f precentage \n (b)Mean effective pressure is %3.2f kN/m^2 \n (II)\n (a1)Percentage change in efficiency is %3.2f percentage \n (b1)Increase in Mean effective pressure is %3.2f percentage \n (III) \n (a3)increased efficiency is %3.3f percentage \n (b3)Increase in Mean effective pressure is %3.2f kN/m^2 \n (IV)change in cutoff of stroke %3.1f percentage',nd1,pm1,ndd1,pmii,ni,pmi,K)

