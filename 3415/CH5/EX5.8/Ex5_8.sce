//fiber optic communications by joseph c. palais
//example 5.8
//OS=Windows XP sp3
//Scilab version 5.4.1
clc;
clear all;
//given
detla_tauby_Lp=20;//linear pulse spread in ns/Km
Le=1;//equilibrum length in km
//to find
L=0.25:0.5:4.25//Length in Km
for i=1:9
    if L(i) > 1 then
f3db(i)=(25/(sqrt(L(i))))//for lengths beyound 1km
else
f3db(i)=25/L(i);//maximum vandwidth(3db)for length less than 1 km
end
end
plot(L,f3db)
xtitle( "3dB bandwidth for multimode fiber having linear pulse spread per unit length is 20ns/Km", "Length", "3dB optical Bandwidth(MHz)") ;
