//chapter 3
//example 3.5
//page 120,
A=2*10^5;//open loop gain
R1=1000;Rf=10000;
Ri=2*10^6;//input resistance
Ro=75;//output resistance
Fo=5;// single break frequency in Hz
B=R1/(R1+Rf)
Af=A/(1+A*B);//gain
disp(Af)// closed loop gain
Rif=Ri*(1+A*B);// closed loop input resistance
disp(Rif)
Rof=Ro/(1+A*B);
disp(Rof)// colsed loop output resistance
Fof=Fo*(1+A*B);
disp(Fof)// colsed loop bandwidth in Hz