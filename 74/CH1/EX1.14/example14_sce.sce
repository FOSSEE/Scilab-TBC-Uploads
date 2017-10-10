// chapter 1
//example 1.14
// page 46, figure1.54
Bac=100;Bdc=100;
Vbe=.715;Vd1=.715; Vz=6.2;Vee=-10;Vcc=10;Vt=26*10^-3;// at room temprature
Re=2700;Rin=10000;Rc=4700;//assuming Rin= 10k
Izt=41*10^-3;
Vin=0;// for dc analysis
//calculation of the value of Ie,Icq1 and Icq2
Vb3=Vee+Vz+Vd1
Ve3=Vb3-Vbe
Ie=(Ve3-Vee)/Re;
disp(Ie)
Ie1=Ie/2
Ie2=Ie/2
A=Bac/(1+Bac);
Icq=A*Ie1;//(Bac/(Bac+1))*Ie1
disp(Icq)
Icq2=Icq;
disp(Icq2)
Gm=Icq/Vt// Vt at room temp 26mA
r=(Bac*Vt)/Icq
Ib=Icq/Bac;
Ve1=-Ib*Rin-Vbe;
disp(Ve1)//result
Vc1=Vcc-Icq*Rc;
disp(Vc1)
Vceq=Vc1-Ve1;
disp(Vceq,Icq)//result operating point