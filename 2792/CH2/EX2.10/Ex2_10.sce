clc
mo = 9.1*10^-31
disp("mo = "+string(mo)+"kg") //initializing value of mass of electron
me = 0.067*mo
disp("me* = "+string(me)+"kg") //initializing value of effective mass of GaAs
kbT = 0.026
disp("kbT = "+string(kbT)+"eV/K") //initializing value of kbT at 300K
ml = 0.98*mo
disp("ml* = "+string(ml)+"kg") //initializing value of longitudinal mass
mt = 0.19*mo
disp("mt*= "+string(mt)+"kg")//initializing value of transverse mass
mh = 0.55*mo
disp("mh*= "+string(mh)+"kg")//initializing value of density of state mass for the valence band 
//let
Eg = 0.0
disp("Eg = "+string(Eg)+"J") //initializing value of valence bandedge energy
mdos = (((6)^(2/3))*((ml)*((mt)^2))^(1/3))
disp("The desity of states of effective mass of the combined six valleys of silicon is (mdos* = (((6)^(2/3))*((ml*)*((mt*)^2))^(1/3)))= "+string(mdos)+"kg")//calculation
Efi = (Eg/2)+((3/4)*kbT*log(mh/mdos))
disp("The intrinsic fermi level is given by Efi = (Eg/2)+((3/4)*kbT*log(mh/me))= "+string(Efi)+"eV")//calculation
// -ve sign show that fermi level is below the centre of mid-bandgap
// In this question the answer is provided in the book is in terms of Eg and i have assumed value of Eg = 0 V 
