clc
//to calculate dielectric constant of the liquid
//capacitance of the air filled dielectric Cair=Q/Vo-----------eq(1)
//when dielectric is filled between the plates ,Cliquid=Q/V
//then Cliquid=epsilonr*Q/Vo------eq(2)
Vo=60
                  //voltage in volts
V=30
//from eq(1) and eq(2),we get
epsilon0=Vo/V
disp("the dielectric constant of the liquid is epsilon0="+string(epsilon0)+"unitless")
