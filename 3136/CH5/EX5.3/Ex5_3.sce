clear all; clc;

disp("From equation 5.11 with Vu=constant,we have (Vu^2/r)dr+(Va)dVa=0 ")
disp("Or Vu^2lnr+Va^2/2=C")
disp("Or Vu^2*ln(r/rh)=(Vah^2-Va^2)/2")
disp("Or Va^2=Vah^2-2*Vu^2*ln(r/rh)")

V_ah=70
//let m=Vah^2
m=V_ah^2
printf("\n Vah^2 = %0.0f",m)

V_u=500
//let n=Vu^2
n=V_u^2
printf("\n Vu^2= %0.0f",n)

//let x=Vu^2*2
x=n*2//Since n=Vu^2
printf("\n 2*Vu^2= %0.0f",x)

disp("Thus Va=(4900-5000*ln(0.5r))^0.5 m/s")
disp("and at the tip,Vat=27.1m/s")
