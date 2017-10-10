clc
clear
//INPUT DATA
t1=300;//temperature in Degree C
t2=700;//temperature in Degree C
p1=1;//pressure in bar
p3=12;//pressure in bar
R=0.287;//gas constant

//CALCULATIONS
ns=(1-(t1/t2))*100;//Thermal efficiency in percentage
Rc=((p3/p1)*(t1/t2));//compression ratio
wn=R*log(Rc)*(t2-t1);//net work done in kJ/kg
vs=(R*t1*(1-(1/Rc)))/(p1);//swept volume in m^3/kg
pm=wn/vs;//mean effective pressure in bar

//OUTPUT
printf('(i)Thermal efficiency is %3.2f percentage \n (ii)The mean effective pressure is %3.2f bar',ns,pm)


