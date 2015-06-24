function Zeq=parallel(Z1,Z2)
    Zeq=Z1*Z2/(Z1+Z2)
endfunction

////////////short AB
Vab=0
Isc=50/4

////////////for Zn
Zn=parallel(4,8*%i)

disp(Isc,Zn)