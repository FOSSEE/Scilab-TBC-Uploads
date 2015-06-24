//radiation resistance of hertzian dipole
//given
clc
lemda=1//as the radiation resistance is independent  of lemda
function[Rr]=rad_resistance(dl)
 for(lemda!=0)
     Rr=80*%pi^2*(dl/lemda)^2
     Rr=round(Rr*1000)/1000///rounding off decimals
     end
 endfunction
dl=lemda/20
[Rr1]=rad_resistance(dl)
dl=lemda/30
[Rr2]=rad_resistance(dl)
dl=lemda/40
[Rr3]=rad_resistance(dl)
disp(Rr3,Rr2,Rr1,'the radiation resistance of hertzian dipole')
