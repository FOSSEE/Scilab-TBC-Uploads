clc
clear
//INPUT DATA
t1=300;//Initial temperature in K
t21=523;//intermmediate temperature in K
t3=1073;//final temperature in K
t41=723;//turbine outlet temperature in K
p1=1;//pressure in bar
p2=6;//final pressure in bar
Rp=6;//pressure ratio
g=1.4;//constant
cp=1.005;//specific pressure

//CALCULATIONS
t2=t1*(Rp^((g-1)/g));//Temperature in K
t4=t3/(Rp^((g-1)/g));//Temperature in K

nc=((t2-t1)/(t21-t1))*100;//compressor efficiency in percentage
nt=((t3-t41)/(t3-t4))*100;//Turbine efficiency in percentage

ngt=(1-(1/Rp)^((g-1)/g))*100;//Thermal efficiency in percentage
ngt1=((((nt/100)*t3*(ngt/100))-((t1/(nc/100))*((Rp^((g-1)/g))-1)))/(t1*((t3/t1)-((Rp^((g-1)/g))))))*100;//Thermal efficiency in percentage

Rw=((cp*((t3-t4)-(t2-t1)))/(cp*(t3-t4)));//Work ratio
Rw1=((cp*((t3-t41)-(t21-t1)))/(cp*(t3-t41)));//Work ratio

Rpo=sqrt((t3/t1)^(g/(g-1)));//pressure ratio for maximum output
Rpo1=sqrt(((t3/t1)^(g/(g-1)))*(nc/100)*(nt/100));//pressure ratio for maximum output

Rpm=(t3/t1)^(g/(g-1));//pressure ratio for maximum efficiency
Rpm1=(t3/t1)^(g/(g-1))*(1/((nc/100)*(nt/100)));//pressure ratio for maximum efficiency

//OUTPUT
printf('(A)The compressor efficiency is %3.3f percentage \n  turbine efficiency is %3.2f percentage \n',nc,nt)

printf('(B)IDEAL CYCLE \n (i)thermal efficiency is %3.2f percentage \n(ii)Work ratio is %3.4f \n (iii)Pressure ratio for maximum output is %3.2f \n (iv)pressure ratio for maximum efficiency is %3.2f \n ',ngt,Rw,Rpo,Rpm)

printf('(B)ACTUAL CYCLE \n (i)thermal efficiency is %3.2f percentage \n(ii)Work ratio is %3.4f \n (iii)Pressure ratio for maximum output is %3.2f \n (iv)pressure ratio for maximum efficiency is %3.1f ',ngt1,Rw1,Rpo1,Rpm1)

