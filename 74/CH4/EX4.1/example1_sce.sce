// chapter 4
//example 4.1
// page 193 ,figure 4.20
R1=120;R2=51*10^3;//given
Vsat=15;Vcc=15;Vee=15;Vin=1;//given
Vut=((Vsat*R1)/(R1+R2));
disp(Vut)//result threshold in ampere
Vult=((-Vsat*R1)/(R1+R2));
disp(Vult)//ampere