//Chapter 3_Semoconductor Devices Fundamentals
//Caption : Resistivity of Intrinsic Ge
//Example3.3: Find the resistivity of intrinsic Ge at 300K. Given un=3900, and up=1900 cm^2/N sec. and ni=2.5*10^13 cm^-3for intrinsic Ge.
//Solution:
function RES=resistivity(un,up)// un:electron concentration, up:hole concentration
    q=1.6*10^-19;//in coulumb
    ni=2.5*10^13;//concentration in cm^-3
    RES=1/(q*ni*(un+up))//since n=p=ni
    disp('resistivity of intrinsic Ge is :')
    disp('ohm-cm',RES)
endfunction
//resistivity(3900,1900);