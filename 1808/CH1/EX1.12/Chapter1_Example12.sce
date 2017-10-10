clc
clear
//INPUT DATA
Vc=0.009;//clearance volume in m^3
d=0.3;//bore in m
L=0.5;//stroke in m
g=1.4;//constant
cv=20000;//calorific value in kJ/m^3
pmi=800;//mean effective pressure in bar
N=120;//explosions per minute
nc=1;//number of cylinders
n=1;//for single cylinder
mf=30;//mass fuel consumption 


//CALCULATIONS
Vs=(3.14*d^2*L/4);//swept volume in m^3
Rc=((Vs+Vc)/Vc);//compression ratio
IP=(pmi*L*(3.14*(d^2)/4)*N*nc)/(60*n);//Indicated power in kW
nit=(IP/(mf*cv/3600))*100;//Indicated thermal efficiency in percentage
no=(1-(1/(Rc^(g-1))))*100;//Air standard efficiency in percentage
nr=(nit/no)*100;//relative efficiency in percentage


//OUTPUT
printf('(i)Compression ratio is %3.3f \n (ii)Indicated thermal efficiency is %3.2f percentage \n (iii)Air standard efficiency is %3.2f percentage \n (iv)Relative efficiency is %3.2f percentage',Rc,nit,no,nr)

