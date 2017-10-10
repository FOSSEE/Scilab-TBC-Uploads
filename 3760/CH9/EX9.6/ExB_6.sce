clc;
w1=85; // reading of wattmeter 1;
w2=35; // reading of wattmeter 2;
P=w1+w2; // total input power
n=0.85; // efficiency of motor
vl=1100; // supply voltage
pf=cosd(atand((sqrt(3)*(w1-w2))/(w1+w2)));
il=(P*1000)/(sqrt(3)*vl*pf); // line current
ps=n*P;
printf('Input power is %f KW\n',P);
printf('Line current is %f A\n',il);
printf('power factor is %f lagging\n',pf);
printf('shaft power is %f KW',ps);
