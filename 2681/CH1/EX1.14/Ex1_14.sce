//find the wavelength of microwave frequency
//given
clc
v0=3d+8//velocity in m/s
function[lem]=wavelength(v0,fr)
lem=v0/fr//calculating wavelength
endfunction
fr=1d+6//frequency in MHz
[lem1]=wavelength(v0,fr)
fr=1d+7//frequency in MHz
[lem2]=wavelength(v0,fr)
fr=1d+8//frequency in MHz
[lem3]=wavelength(v0,fr)
fr=1d+9//frequency in MHz
[lem4]=wavelength(v0,fr)
fr=1d+10//frequency in MHz
[lem5]=wavelength(v0,fr)
disp(lem5,lem4,lem3,lem2,lem1,'the wavelength  for given values of frequency in meter')//wavelength in meter
