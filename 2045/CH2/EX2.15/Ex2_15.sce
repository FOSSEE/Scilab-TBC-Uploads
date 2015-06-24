//pagenumber 111 example 15
clear
voltag=375;//volt
r1=2000;//ohm
induct=20;//henry
c1=16*10^-6;//farad
r11=100;//ohm
r=200;//ohm
//(1) voltage and ripple with load
disp("voltage and ripple with load");
r=r+r11+400;
vdc=((2*sqrt(2)*voltag/3.14))/1.35;
ripple=r1/(3*sqrt(2)*(377)*induct*2);
disp("vdc   =   "+string((vdc))+"volt");
disp("ripple   =   "+string((ripple)));
//(2) capacitance connected across load
disp("capacitance connected across load");
vdc=sqrt(2)*voltag/(1+1/(4*(60)*r1*2*c1));
ripple=1/(4*sqrt(3)*(60)*r1*2*c1);
disp("vdc   =   "+string((vdc))+"volt");
disp("ripple   =   "+string((ripple)));
//(3) filter containing two inductors and capacitors in parallel
disp("filter containing two inductors and capacitors in parallel");
vdc=250;//volt
ripple=0.83*10^-6/(2*induct*2*c1);//correction in the book
disp("vdc   =   "+string((vdc))+"volt");
disp("ripple   =   "+string((ripple)));
//(4) two filter
disp("two filter");
vdc=250;
ripple=sqrt(2)/(3*16*3.14^2*60^2*induct*c1)^2;//correction in the book
disp("vdc   =   "+string((vdc))+"volt");
disp("ripple   =   "+string((ripple)));
vdc=sqrt(2)*voltag/(1+(4170/(r1*16))+(r/r1));
ripple=3300/(16^2*2*20*r1);
disp("vdc   =   "+string((vdc))+"volt");
disp("ripple   =   "+string((ripple)));
