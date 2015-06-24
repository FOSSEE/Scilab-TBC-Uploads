clc;funcprot(0);//Example 2.19
//Initilisation of Variables
T1=200;....//temparature at material A surface in degrees celcius
T4=100;.....//temparature at material C surface in degrees celcius
Ka=100;....//thermal conductivity of material A in W/m*degrees celcius
Kb=70;.....//thermal conductivity of material B in W/m*degrees celcius
Kc=20;.....//thermal conductivity of material C in W/m*degrees celcius
Kd=70;.....//thermal conductivity of material D in W/m*degrees celcius
L1=0.04;....//length of material A in m
L2=0.1;....//length of material B&C in m
L3=0.05;....//length of material D in m
l1=2;...//height of materials A&C
l2=1;...//height of materials B&D
b=1;...//breath of matrials A,B,C&D
//calculations
Aa=l1*b;....//area off the wall A in m
Ab=l2*b;....//area off the wall B in m
Ac=l2*b;....//area off the wall C in m
Ad=l1*b;....//area off the wall D in m
Ra=L1/(Ka*Aa);....//resistance of material A in degrees celcius/W
Rb=L2/(Kb*Ab);....//resistance of material B in degrees celcius/W
Rd=L2/(Kc*Ac);....//resistance of material C in degrees celcius/W
Rc=L3/(Kd*Ad);....//resistance of material D in degrees celcius/W
R=(Rb*Rd)/(Rb+Rd);....//resistance of material B&C in degrees celcius/W
Rtotal=Ra+R+Rc;....//total resistance of the wall
Q=(T1-T4)/Rtotal;....//heat flow rate though the wall in W
T2=T1-(Q*Ra);...//interface temparature in degrees celcius
T3=T4+(Q*Rc);...//interface temparature in degrees celcius
disp(Q/1000,"heat flow rate though the wall in kW:")
disp(T2,"interface temparature in degrees celcius in degrees celcius(T2):")
disp(T3,"interface temparature in degrees celcius in degrees celcius(T3):")
