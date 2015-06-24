//Transport Processes and Seperation Process Principles
//Chapter 10
//Example 10.3-1
//Stage and continuous Gas-liquid Seperation Processes
//given data
L0=300;//kg mol/h
Ld=L0;
V=100;//kg mol/h
ya2=0.2;
Vd=V*(1-ya2);
//L0*(xa0/(1-xa0))+Vd*(ya2/(1-ya2))=Ld*(xa1/(1-xa1))+Vd*(ya1/(1-ya1))
xa0=0;
LHS=L0*(xa0/(1-xa0))+Vd*(ya2/(1-ya2));
H=0.142*10000;//henrys law constant at 293 K (atm/mol frac)
P=1;//atm
Hd=H/P;
xa1=1.41/10000
ya1=Hd*xa1
L1=Ld/(1-xa1);
V1=Vd/(1-ya1);
mprintf("the outlet liquid flow rate is %f kg/h",L1);
mprintf("the outlet vapour flow rate is %f kg/h",V1);
