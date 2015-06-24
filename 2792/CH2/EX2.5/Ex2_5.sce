clc
h=1.05*10^-34
disp("h = "+string(h)+"Js") //initializing value of reduced plancks constant or dirac constant or h-bar
mo = 9.1*10^-31
disp("mo = "+string(mo)+"kg") //initializing value of mass of electron
ml = 0.98*mo
disp("ml* = "+string(ml)+"kg") //initializing value of longitudinal mass
mt = 0.19*mo
disp("mt*= "+string(mt)+"kg")//initializing value of transverse mass
a = 5.43*10^-10
disp("a = "+string(a)+"J") //initializing value of latice constant
kx = ((2*%pi*0.95)/a)
disp("kx = "+string(kx)+"m^-1") //initializing value of given k-value in x direction 
ky = ((2*%pi*0.1)/a)
disp("ky = "+string(ky)+"m^-1") //initializing value of given k-value in y direction 
kz = ((2*%pi*0.0)/a)
disp("kz = "+string(kz)+"m^-1") //initializing value of given k-value in z direction 
kxo = ((2*%pi*0.85)/a)
disp("kxo = "+string(kxo)+"m^-1") //initializing value of k-value for Si occupies the (100) valley in x direction 
kyo = ((2*%pi*0.0)/a)
disp("kyo = "+string(kyo)+"m^-1") //initializing value of k-value for Si occupies the (100) valley in y direction 
kzo = ((2*%pi*0.0)/a)
disp("kzo = "+string(kzo)+"m^-1") //initializing value of k-value for Si occupies the (100) valley in z direction 
kl = kx-kxo
disp("the change in k vector in x direction is,kl = kx-kxo = "+string(kl)+"m^-1") //calculation
kt = ky-kyo
disp("the change in k vector in y direction is,kt = ky-kyo = "+string(kt)+"m^-1") //calculation
E= (((h^2)*(kl^2))/(2*ml))+(((h^2)*(kt^2))/(2*mt))
disp("The electron energy measured from the conduction bandege is ,E= (((h^2)*(kl^2))/(2*ml))+(((h^2)*(kt^2))/(2*mt))= "+string(E)+"J")//calculation
