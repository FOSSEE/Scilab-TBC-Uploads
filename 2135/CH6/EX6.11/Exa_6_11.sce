//Exa 6.11
clc;
clear;
close;
format("v",7);

//Given Data :
p1=20;//bar
Tsup1=350;//degree C
m1=1;//Kg
p2=20;//bar
m2=1;//Kg
p3=p1;//bar
Tsup3=250;//degree C
m3=m1+m2;//Kg
Cp=2.25;//KJ/Kg
hg1=2797.2;//KJ/Kg(at p=20 bar)
hg2=hg1;//KJ/Kg(at p=20 bar)
hg3=hg1;//KJ/Kg(at p=20 bar)
ts1=212.37;//degree C
ts2=ts1;//degree C
ts3=ts1;//degree C
//m1*h1+m2*h2=m3*h3
h2=(m3*(hg3+Cp*(Tsup3-ts3))-m1*(hg1+Cp*(Tsup1-ts1)))/m2;//KJ/Kg
disp(h2,"Enthalpy of boiler2 in KJ/Kg :  ");
disp(hg2,"hg2(KJ/Kg)  : ");
disp("steam is wet because h2<hg2")
//h2=hf2+x2*hfg2// as steam is wet because h2<hg2
hf2=908.6;//KJ/Kg
hfg2=1888.6;//KJ/Kg
x2=(h2-hf2)/hfg2;//
disp(x2,"Dryness : ");
//Steam table is used to get some data.
//Ans is wrong in the book.
