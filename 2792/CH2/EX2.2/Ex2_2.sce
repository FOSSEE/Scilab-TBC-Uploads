clc
mo = 9.1*10^-31
disp("mo = "+string(mo)+"kg") //initializing value of mass of electron
ml = 0.98*mo
disp("ml* = "+string(ml)+"kg") //initializing value of longitudinal mass
mt = 0.19*mo
disp("mt*= "+string(mt)+"kg")//initializing value of transverse mass
mhh =0.49*mo
disp("mhh* = "+string(mhh)+"kg") //initializing value of heavy hole mass
mlh = 0.16*mo
disp("mlh*= "+string(mlh)+"kg")//initializing value of light hole mass
mdos = (((6)^(2/3))*((ml)*((mt)^2))^(1/3))
disp("The conduction band density of states mass is ,(mdos* = (((6)^(2/3))*((ml*)*((mt*)^2))^(1/3)))= "+string(mdos)+"kg")//calculation
mdos1 = (((mhh)^(3/2)+(mlh)^(3/2))^(2/3))
disp("The Valence band density of states mass is ,(mdos1* = (((mhh)^(3/2)+(mlh)^(3/2))^(2/3))= "+string(mdos1)+"kg")//calculation

 

