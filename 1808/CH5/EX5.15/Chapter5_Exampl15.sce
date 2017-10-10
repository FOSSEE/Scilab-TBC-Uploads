clc
clear
//INPUT DATA
pa=1;//Ambient pressure in bar
p1=0.98;//pressure in bar
p2=4;//pressure in bar
p3=15;//pressure in bar
ta=293;//Ambient temperature in K
t1=303;//temperature in K
t5=303;//temperature in K
n=1.3;//for two stage compressor
c=0.05;//clearance volume
R=0.287;//gas constant

//CALCULATIONS
nvs=1+c-c*((p2/p1)^(1/n));//Volumetric efficiency in percentage
nva=((p1/pa)*(ta/t1)*(nvs))*100;//Volumetric efficiency referred to ambient condition in percentage
wlp=(n/(n-1))*R*t1*(((p2/p1)^((n-1)/n))-1);//work done in Lp cylinder
whp=(n/(n-1))*R*t5*(((p3/p2)^((n-1)/n))-1);//work done in Hp cylinder
wt=wlp+whp;//work done  in total cylinder
wiso=R*t1*log(p3/p1);//Isothermal work done per kg of air
niso=(wiso/wt)*100;//Isothermal efficiency in percentage

//OUTPUT
printf('(i)The volumetric efficiency referred to ambient condition is %3.2f percentage \n (ii)work done to deliver air by compressor is %3.2f  kJ/kg \n (iii)Isothermal efficiency is %3.2f percentage',nva,wt,niso)



