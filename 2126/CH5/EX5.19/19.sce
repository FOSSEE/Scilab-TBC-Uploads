clc
clear

//Input data
Mx=2 //Mach number before the shock
a1=3 //Diffuser area ratio
Pox=0.1 //Stagnation pressure before shock in bar
Tx=300 //Temperature before the shock in K
k=1.4 //Adiabatic constant 

//Calculation
t1=0.555 //Static to stagnation temperature ratio before shock from isentropic gas tables @Mx,k=1.4
Tox=Tx/t1 //Stagnation temperature before shock in K
p1=0.128 //Static to stagnation pressure ratio before shock from isentropic gas tables @Mx,k=1.4
Px=Pox*p1 //Pressure before the shock in bar
My=0.577 //Mach number after the shock
p2=4.5 //Pressure ratio after and before the shock from gas tables @Mx
Py=Px*p2 //Pressure just after the shock in bar
t2=1.687 //Temperature ratio after and before the shock from gas tables @Mx
Ty=Tx*t2 //Temperature ratio after the shock in K
p3=0.721 //Stagnation pressure ratio after and before shock from gas tables @Mx
Poy=Pox*p3 //Stagnation pressure after shock in kPa
a2=1.2195 //Ratio of area after shock to throat area after shock from gas tables @My
a3=a2*a1 //Ratio of exit area to throat area at exit 
M2=0.16 //Exit mach number from gas tables @a3
t3=0.9946 //Static to stagnation temperature ratio at exit from isentropic gas tables @Mx
T2=Tox*t3 //Exit Temperature in K, Since Tox=Toy=T02 in case of diffuser
p4=0.982 //Static to stagnation pressure ratio at exit from isentropic gas tables @Mx
P2=Poy*p4 //Exit pressure in bar, Calculation mistake in textbook
eff=((((Tox/Tx)*(Poy/Pox)^((k-1)/k))-1)/(((k-1)/2)*Mx^2))*100 //Diffuser efficiency including shock in percent

//Output 
printf('(A)At the diffuser exit:\n    Mach number is %3.2f\n    Pressure is %3.3f bar\n    Temperature is %3.2f K\n (B)Diffuser efficiency including shock is %3.3f percent',M2,P2,T2,eff)
