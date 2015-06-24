clc;clear;
//Example 4.12

//given dara
mi=50;
T1i=80;//suffix i for iron
Vw=0.5;
T1w=25;//suffix w for water
v=0.001;//specific volume of liquid water at or about room temperature

//from Table A–3
ci=0.45;
cw=4.18;

//calculations
mw=Vw/v;
//Ein - Eout = Esystem
// du = 0 i.e (mcdT)iron + (mcdT)water = 0
// mi * ci * (T - T1i) + mw *cw * (T-T1w)
//on rearranging above equn
T= (mi*ci*T1i + mw*cw*T1w)/(mi*ci+mw*cw);
disp(T,'the temperature when thermal equilibrium is reached in C')
