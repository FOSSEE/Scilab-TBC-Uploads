//scilab 5.4.1
//Windows 7 operating system
//chapter 23 Lasers,Fibre Optics,and Holography
clc
clear
h=6.62*10^(-34)//h=Planck's constant
v=3*10^8//v=velocity of light(as normal optical source is mentioned) in m/s
kB=1.38*10^-23//kB=Boltzmann's constant
T=1000//T=temperature in Kelvin
w=6000//w=wavelength in Armstrong
R=(exp((h*v)/(w*(10^-10)*kB*T)))-1//R=the ratio of the number of spontaneous to stimulated transitions
disp(,R,"R=")
if (R>1) then
    
    disp("As the ratio of the number of spontaneous to stimulated transitions (R) is >> 1 the emission is predominantly due to spontaneous transitions and is thus incoherent")
end
