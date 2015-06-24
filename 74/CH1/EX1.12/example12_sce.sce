// chapter 1
// example 1.12
// page no.38, figure 1.44
Kn1=.2*10^-3;Kn2=.2*10^-3;Kn3=.4*10^-3;Kn4=.4*10^-3;// all in mA/V^2
Vtn=1;Vcc=12;Vee=-12;// voltage is in volts
R1=27000;Rd=15000;
// calculation of I1 and Vgs4
// applying KVL=> Vcc-Vee=I1*R1+Vgs4------------eq(1)
// I1=Kn3*(Vgs4-Vtn)^2-----------eq(2)
// put eq (2) in eq (1)
//((Vcc-Vee)-Vgs4)/R1=Kn3*(Vgs4-Vtn)^2
p1=poly([-13.2 -20.6 10],'Vgs4','c');
roots(p1)// we have to take only value positive and greater than Vtn
I1=Kn3*(2.573-Vtn)^2;//only positive and value greater than Vtn of  Vgs4 taken 
disp(I1)
//calculation  of drain current Iq
Iq=I1;// identical M4 and M3
disp(Iq)
// calculation of Id1 and Id2
Id1=Iq/2;
Id2=Iq/2;
disp(Id1,Id2)// identical
// calculation of gate voltage for M1 and M2
Vgs1=Vtn+sqrt(Id1/Kn1);// using Id1=Kn1*(Vgs1-Vtn)^2
disp(Vgs1)// result gate to source voltage
Vgs2=Vgs1;// since they are identical
disp(Vgs2)
//calculation of Vout1 and Vout2
Vout1=Vcc-Id1*Rd;
disp(Vout1)// under quiescent condition
Vout2=Vcc-Id2*Rd;
disp(Vout2)
// calculation of maximum common mode input voltage Vcmmax
Vds1=Vgs1-Vtn;
Vcmmax=Vout1-Vds1+Vgs1;//maximum common mode voltage 
disp(Vcmmax)// result is in volts
// calculation of minimum common mode input voltage Vcmmin 
Vds4=Vgs2-Vtn;
Vcmmin=Vgs1+Vds4-Vcc;// minimum common mode input voltage
disp(Vcmmin)// volts