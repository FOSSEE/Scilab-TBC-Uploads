//Finding the saturation Parameters of BJT
//Example 4.1(Page No- 128) 
clc
clear
//given data
Vcc = 200;//V
bet_min = 8;
bet_max = 40;
Rc = 11;//Ohm
ODF = 5;//overdrive factor
Vb = 10;//V
Vce = 1;//V
Vbe_sat = 1.5;//V
Vce_sat = 1;//V
Ics = (Vcc - Vce_sat)/Rc;
Ibs = Ics/bet_min;
Ib = ODF*Ibs;
//part(a)
Rb = (Vb - Vbe_sat)/Ib;
printf('(a)\t Required value of Rb: %0.4fOhm',Rb)

//part(b)
bet_forced = Ics/Ib;
printf('\n (b)\t Beta_forced: %1.1f',bet_forced)

//part(c)
Pt = Vbe_sat*Ib + Vce*Ics;//total power loss in two junctions
printf('\n (c)\t Total power loss n two juctions: %2.2f W',Pt)


