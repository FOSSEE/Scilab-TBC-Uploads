clc
clear
disp("example 4 20")
p=160 //kva for transformer 
pf=0.6 //power factor
el=96 //effective load
eli=120 //effective load increase
rc=eli*(tand(acosd(pf))-tand(acosd(eli/p)))
opf=eli/p
printf(" required capacitor kVAR %dKVAR \n overall power factor %.2f \n it is seen that point d is on %.2f line",rc,opf,opf)