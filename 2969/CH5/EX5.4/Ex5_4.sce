clc
clear
//given steam table extract
p1=80;                   //in bar
t1=295.1;                //in deg. celsius
vf1=0.001385;            //m^3/kg
vg1=0.0235;              //m^3/kg
hf1=1317;                //in kJ/kg
hfg1=1440.5;             //in kJ/kg
hg1=2757.5;              //in kJ/kg
sf1=3.2073;              //in kJ/kgK
sfg1=2.5351;             //in kJ/kgK
sg1=5.7424;              //in kJ/kgK

p2=0.1;                  //in bar
t2=45.84;                //in deg. celsius
vf2=0.0010103;           //m^3/kg
vg2=14.68                //m^3/kg
hf2=191.9;               //in kJ/kg
hf3=hf2;
hfg2=2392.3;             //in kJ/kg
hg2=2584.2;              //in kJ/kg
sf2=0.6488;              //in kJ/kgK
sfg2=7.5006;             //in kJ/kgK
sg2=8.1494;              //in kJ/kgK

ETAt=0.9;                //steam turbine efficiency
ETAp=0.8;                //condensate pump efficiency

P1=80;                   //in bar
T1=600;                  //in deg celsius
//At 80 bar and 600 deg celsius
v1=0.486;                //m^3/kg
h1=3642;                 //kJ/kg
s1=7.0206;               //kJ/kg/K

//as the steam expands isentropically, s1=s2
//sg1=sf2+x2*sfg2
x2=(s1-sf2)/sfg2;
h2=hf2+x2*hfg2;
Wta=ETAt*(h1-h2);        //actual turbine work in kJ/kg
Wp=vf2*(p1-p2)*10^5/10^3;//pump work in kJ/kg
Wpa=Wp/ETAp;             //actual pump work in kJ/kg
Wnet=Wta-Wpa;            //specific work in kJ/kg
//ETAthermal=Wnet/Q1
//Q1=h1-hf4
hf4=hf3+Wpa;
Q1=h1-hf4;
ETAth=Wnet/Q1;

printf(' (i) The Specific work (Wnet) is: %4.2f kJ/kg. \n',Wnet);
printf(' (ii) The Thermal efficiency is: %1.3f or %2.1f percent. \n',ETAth,(ETAth*100));
