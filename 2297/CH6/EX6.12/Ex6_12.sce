//Example 6.12// emf
clc;
clear;
close;
format('v',7)
disp("part (a) generator ")
kva=4;//kVA
v=110;//volts
re=3;//syncronous reacrance in ohms
ip=((kva*10^3)/(sqrt(3)*v));//phase current in Amperes
ep=v/(sqrt(3));//phase voltage in volts
e1=ep+%i*(ip*3);//line voltage in volts
e11=sqrt((real(e1)^2)+imag(e1)^2);//line voltage per phase in volts
pf=0.8;//power factor
e12=(sqrt((real(e1)*pf)^2+(((imag(e1)*sqrt(1-pf^2))+imag(e1)))^2));//
e13=(sqrt((real(e1)*pf)^2+(((imag(e1)*sqrt(1-pf^2))-imag(e1)))^2));//
disp(e11,"emf  when the armature current is full load unit pf is,(V)=")
disp(e12,"emf  when the armature current is full load 0.8 pf (lag) is,(V)=")
disp(e13,"emf  when the armature current is full load 0.8 pf (lead) is,(V)=")
disp("part (b) motor")
kva=4;//kVa
v=110;//volts
re=3;//syncronous reacrance in ohms
ip=((kva*10^3)/(sqrt(3)*v));//phase current in Amperes
ep=v/(sqrt(3));//phase voltage in volts
e1=ep-%i*(ip*3);//line voltage in volts
e11=sqrt((real(e1)^2)+imag(e1)^2);//line voltage per phase in volts
pf=0.8;//power factor
e12=(sqrt((real(e1)*pf)^2+(((imag(e1)*sqrt(1-pf^2))-imag(e1)))^2));//
e13=(sqrt((real(e1)*pf)^2+(((imag(e1)*sqrt(1-pf^2))+imag(e1)))^2));//
disp(e11,"emf  when the armature current is full load unit pf is,(V)=")
disp(e12,"emf  when the armature current is full load 0.8 pf (lag) is,(V)=")
disp(e13,"emf  when the armature current is full load 0.8 pf (lead) is,(V)=")
