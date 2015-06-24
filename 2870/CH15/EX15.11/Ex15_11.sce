clc;clear;
//Example 15.11

//given values
Tsurr=298;//in K

//contansts used 
Ru=8.314;//in kJ/kmol K

//calculations

//part - a
// CH4 + 3(O2 + 3.76N2)  = CO2 + 2H2O + O2 + 11.28N2
//The amount of water vapor that remains in the products is determined as in Example 15–3
Nv=0.43;//moles of water vapour
Nw=1.57;//moles of water in liquid
//hf values
//methane as m
hfm=-74850;
//carbondioxide as c
hfc=-393520;
//water vapour as v
hfv=-241820;
//water in liquid as w
hfw=-285830;
Qout=1*hfm-1*hfc-Nv*hfv-Nw*hfw;
disp(Qout,'in kJ/kmol')

//part - b
//entropy calculations by using table A-26
//Si = Ni*(si - Ruln yiPm
//reactants
Sm=1*(186.16-Ru*log(1*1));
So=3*(205.04-Ru*log(0.21*1));
Sn=11.28*(191.61-Ru*log(.79*1));
Sreact=Sm+So+Sn;
//products
Nt=Nv+1+1+11.28;//total moles
yw=1;
yc=1/Nt;
yv=Nv/Nt;
yo=1/Nt;
yn=11.28/Nt;
Sw=Nw*(69.92-Ru*log(yw*1));
Sc=1*(213.80-Ru*log(yc*1));
Sv=Nv*(188.83-Ru*log(yv*1));
So=1*(205.04-Ru*log(yo*1));
Sn=11.28*(191.61-Ru*log(yn*1));
Sprod=Sc+Sw+So+Sn+Sv;
Sgen=Sprod-Sreact+Qout/Tsurr;
Sgen=ceil(Sgen);
disp(Sgen,'exergy destruction in kJ/kmol - K');
Xdestroyed=Tsurr*Sgen/1000;//factor of 1000 for converting kJ to MJ
Xdestroyed=floor(Xdestroyed);
disp(Xdestroyed,'in MJ/kmol');
//This process involves no actual work. Therefore, the reversible work and energy destroyed are identical
Wrev=Xdestroyed;
disp(Wrev,'the reversible work in MJ/kmol')
