clc
clear
//DATA GIVEN
V=0.9;                          //capacity of spherical vessel in m^3
p1=8;                           //pressure of steam in bar
x1=0.9;                         //dryness fraction of steam
p2=4;                           //pressure of steam after blow off in bar
p3=3;                           //final pressure of steam in bar

//At 8 bar, from steam tables
hf1=720.9;                      //kJ/kg
hfg1=2046.5;                    //kJ/kg
vg1=0.240;                      //m^3/kg

m1=V/(x1*vg1);                  //mass of steam in the vessel in kg

h1=hf1+x1*hfg1;                 //enthalpy of steam before blowing off (per kg)
//enthalpy of steam before blowing off (per kg) = enthalpy of steam after blowing off (per kg)
h2=h1;
//h2=hf2+x2*hfg2
//At 4 bar, from steam tables
hf2=604.7;                      //kJ/kg
hfg2=2133;                      //kJ/kg
vg2=0.462;                      //m^3/kg
x2=(h2-hf2)/hfg2;               //dryness fraction at 2

m2=V/(x2*vg2);                  //mass of steam in the vessel in kg
m=m1-m2;                        //mass of steam blown off in kg

//As it is constant volume cooling, x2*vg2(at 4 bar)=x3*vg3(at 3 bar)
//At 3 bar, from steam tables
hf3=561.4;                      //kJ/kg
hfg3=2163.2;                    //kJ/kg
vg3=0.606;                      //m^3/kg

x3=x2*vg2/vg3;
h3=hf3+x3*hfg3;

//heat lost during cooling, Qlost=m(u3-u2)
u2=h2-p2*10^5*x2*vg2*10^-3;
u3=h3-p3*10^5*x3*vg3*10^-3;
Qlost=m*(u3-u2);

printf(' (i) The Mass of of steam blown off is: %1.3f kg. \n',m);
printf(' (ii) The Dryness fraction of steam in the vessel after cooling is: %1.4f. \n',x3);
printf('(iii) The Heat lost during cooling is: %3.2f kJ. \n',(-Qlost));

//NOTE:
//The answers of m1,x3 are INCORRECT in the book,
//thus, the answers of m, x3 and Qlost are INCORRECT in the book
//while, the values obtained her (in scilab) are CORRECT.

