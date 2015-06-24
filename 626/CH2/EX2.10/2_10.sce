clear;
clc;
close;
disp("Example2.10")
M1=0.5
a=2 // area of cross section units in cm^2
Cf=0.005 //coefficient of skin friction
gm=1.4 //gamma
//Calculations
c=2*(2+1); //Parameter of surface.
//From FANNO table: 4*Cf*L1cr/Dh=1.0691;
Dh=4*a/c; //Hydrolic diameter.
L1cr=1.069*Dh/(4*Cf);
//maximum length will be L1cr.
//For new length(i.e. 2.16*L1cr), Mach no. M2 from FANNO table, M2=0.4;.
M2=0.4;
//the inlet total pressue and temp remains the same, therefore the mass flow rate in the duct is proportional to f(M):
function [f]=f(M)
    f=M/(1+((gm-1)/2)*M^2)^((gm+1)/(2*(gm-1)))
endfunction
dm=(f(M1)-f(M2))/f(M1)*100;
disp(L1cr,"(a)Maximum length of duct that will support given inlet condition(in cm):")
disp(M2,"(b)The new inlet condition mach no. M2:")
disp(dm,"(c)% inlet mass flow drop due to the longer length of the duct:")




