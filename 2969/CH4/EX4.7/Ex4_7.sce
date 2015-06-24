clc
clear
//DATA GIVEN
m=1000;                        //mass of steam generated in kg/hr
p=16;                          //pressure of steam in bar
x=0.9;                         //dryness fraction
Tsup=380+273;                  //temp. of superheated steam in K
Tfw=30;                        //temp. of feed water in deg. celsius
Cps=2.2;                       //specific heat of steam in kJ/kg

//At 16 bar, from steam tables
Ts=201.4+273;                  //in K
hf=858.6;                      //kJ/kg
hfg=1933.2;                    //kJ/kg

Hs=m*[(hf+x*hfg)-1*4.187*(Tfw-0)];      //heat supplied to feed water per hr to produce wet steam
Ha=m*[(1-x)*hfg+Cps*(Tsup-Ts)];         //heat absorbed by superheater per hour

printf('(i) The Heat supplied to feed water per hour to produce wet steam is: %4.2f*10^3 kJ. \n',(Hs/1000));
printf('(ii) The Heat absorbed by superheater per hour is: %3.2f*10^3 kJ. \n',(Ha/1000));
