Nmacro=7
Nchmacro=16
C1=Nmacro*Nchmacro//channel capacity 

Nminpmac=4
C2=Nmacro*Nchmacro*Nminpmac

Nmicpmin=4
C3=Nmacro*Nchmacro*Nminpmac*Nmicpmin

disp(C1,'channel capacity of macrocell system in no. of channels')
disp(C2,'channel capacity of minicell system in no. of channels')
disp(C3,'channel capacity of microcell system in no. of channels')
