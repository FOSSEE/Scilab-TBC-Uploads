//determine Z0 for given transmission line
//given
clc
function[Zo]=zed(L,C)
Zo=sqrt(L/C)//impedence function
endfunction
L=110D-9
C=20D-12
[Zo1]=zed(L,C)
L=110D-9
C=20D-12
[Zo2]=zed(L,C)
Zo2=round(Zo2*100)/100///rounding off decimals
Zo1=round(Zo1*100)/100///rounding off decimals
disp(Zo1,Zo2,'the Zo is determined in ohm:')


    
