clc
h=1.05*10^-34
disp("h = "+string(h)+"Js") //initializing value of reduced plancks constant or dirac constant or h-bar
mo = 9.1*10^-31
disp("mo = "+string(mo)+"kg") //initializing value of mass of electron
me = 0.067*mo
disp("me* = "+string(me)+"kg") //initializing value of effective mass of GaAs
kbT = 4.16*10^-21
disp("kbT = "+string(kbT)+"J/K") //initializing value of kbT at 300K
Nc=2*(((me*kbT)/(2*%pi*(h^2)))^(3/2))
disp("for GaAs conduction band case effective density of states is ,Nc = 2*(((me*kbT)/(2*%pi*(h^2)))^(3/2)) = "+string(Nc)+"m^-3")//calculation
ml = 0.98*mo
disp("ml* = "+string(ml)+"kg") //initializing value of longitudinal mass
mt = 0.19*mo
disp("mt*= "+string(mt)+"kg")//initializing value of transverse mass
mdos = (((6)^(2/3))*((ml)*((mt)^2))^(1/3))
disp("The conduction band density of states mass is (mdos* = (((6)^(2/3))*((ml*)*((mt*)^2))^(1/3)))= "+string(mdos)+"kg")//calculation
Nc1 = 2*((mdos*kbT)/(2*(%pi)*(h^2)))^(3/2)
disp("for silicon conduction band case effective density of states is ,Nc = 2*((mdos*kbT)/(2*(%pi)*(h^2)))^(3/2) = "+string(Nc1)+"m^-3")//calculation
// Note : due to different precisions taken by me and the author ... my answer differ 
disp("          for silicon                 ")
mhh =0.5*mo
disp("mhh* = "+string(mhh)+"kg") //initializing value of heavy hole mass for silicon
mlh = 0.15*mo
disp("mlh*= "+string(mlh)+"kg")//initializing value of light hole mass for silicon
Nv1 =((kbT/(2*(%pi)*(h^2)))^(3/2))*2*(mhh^(3/2)+mlh^(3/2))
disp("for silicon valence band case effective density of states is ,Nv = 2*(mhh^(3/2)+mlh^(3/2))*(kbT/(2*(%pi)*(h^2)))^(3/2)= "+string(Nv1)+"m^-3")//calculation
disp("for GaAs ")
mhh1 =0.45*mo
disp("mhh* = "+string(mhh1)+"kg") //initializing value of heavy hole mass
mlh1 = 0.08*mo
disp("mlh*= "+string(mlh1)+"kg")//initializing value of light hole mass
Nv = 2*(mhh1^(3/2)+mlh1^(3/2))*((kbT/(2*(%pi)*(h^2)))^(3/2))
disp("for GaAs valence band case effective density of states is ,Nv = 2*(mhh1^(3/2)+mlh1^(3/2))*(kbT/(2*(%pi)*(h^2)))^(3/2)= "+string(Nv)+"m^-3")//calculation
// Answer given in the book for valence band case is wrong
