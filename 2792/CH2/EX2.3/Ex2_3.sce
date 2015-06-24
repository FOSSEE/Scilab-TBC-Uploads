clc
h=1.05*10^-34
disp("h = "+string(h)+"Js") //initializing value of reduced plancks constant or dirac constant or h-bar
mo = 9.1*10^-31
disp("mo = "+string(mo)+"kg") //initializing value of mass of electron
mhh =0.5*mo
disp("m* = "+string(mhh)+"kg") //initializing value of heavy hole mass
k = 0.1*10^10
disp("k = "+string(k)+"m^-1") //initializing value of k-value in the heavy hole band of semiconductor
Ev = 0
disp("Ev= "+string(Ev)+"J")//initializing value of Energy of electron in valence band
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
//(we have assumed the valence band energy Ev=0eV as it is not provided in the book)
Ee= Ev-(((h^2)*(k^2))/(2*mhh))
disp("The electron energy in the valence band is ,(Ee= Ev-(((h^2)*(k^2))/(2*mhh))= "+string(Ee)+"J")//calculation
Ee1= Ee/e
disp("The electron energy in the valence band is ,Ee= Ee/e="+string(Ee1)+"eV")//calculation
Eh= Ev+((((h^2)*(k^2))/(2*mhh))/e)
disp("The hole energy in the valence band is ,(Eh= Ev+((((h^2)*(k^2))/(2*mhh))/e)= "+string(Eh)+"eV")//calculation

 

