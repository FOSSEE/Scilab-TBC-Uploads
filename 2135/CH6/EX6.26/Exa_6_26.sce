//Exa 6.26
clc;
clear;
close;
format('v',7);

//Given Data :
m1dot=3;//Kg/min
p1=10;//bar
Tsup1=250;//degree C
m2dot=5;//Kg/min
p2=10;//bar
x2=0.7;//dryness
p3=10;//bar
p4=5;//bar
p5=2;//bar
m3dot=m1dot+m2dot;//Kg/min
hsup1=2826.8;//KJ/Kg(at 10bar)
hf2=762.6;//KJ/Kg(at 10bar)
hf3=762.6;//KJ/Kg(at 10bar)
hfg2=2013.6;//KJ/Kg(at 10bar)
hfg3=2013.6;//KJ/Kg(at 10bar)
//m1dot*hsup1+m2dot*(hf2+x2*hfg2)=m3dot*(hf3+x3*hfg3)
x3=((m1dot*hsup1+m2dot*(hf2+x2*hfg2))/m3dot-hf3)/hfg3;//dryness
disp(x3,"State of steam after mixing(dryness) : ");
x4=0.838;//dryness(from molliers diagram)
disp(x4,"State of steam after throttling(dryness) : ");
sf3=2.138;//KJ/KgK(From steam table
sfg3=4.445;//KJ/KgK(From steam table
sf4=1.860;//KJ/KgK(From steam table)
sfg4=4.959;//KJ/KgK(From steam table
s4SUBs3=m3dot/60*[(sf4+x4*sfg4)-(sf3+x3*sfg3)];//KJ/Kg
disp(s4SUBs3,"Increase in entropy due to throttling in KJ/KgK : ");
h4=2405;//KJ/Kg(from Molliers diagram)
h5=2265;//KJ/Kg(from Molliers diagram)
x5=0.802;//dryness
C4=0;//m/s(from S.F.E.E)
//h4+C4^2/2/1000=h5+C5^2/2/1000
C5=sqrt((h4+C4^2/2/1000-h5)*2*1000);//m/s
p5=2;//bar(from steam table)
Vg5=0.885;//m^3/Kg(from steam table)
//mdot/60=A5*C5/x5/Vg5
A5=m3dot/60/C5*x5*Vg5;//m^2
disp(A5*10^4,"Exit area of nozzle in cm^2 : ");
//Steam table is used to get some data.
