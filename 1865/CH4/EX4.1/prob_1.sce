
//Problem 1
//Calculate the coherent length for white light
clear
clc
w1=400//initial wavelength of white light (in nm)
w2=700//final wavelength of white light (in nm)
dw=w2-w1;//difference between wavelengths
aw=(w1+w2)/2;// average wavelength (in nm)
l=((aw)^2/dw);//coherent length for white light (in nm)
printf('del w = %.9f m\n',dw*(10)^(-9))
printf('average wavelength= %.9f m \n\n',aw*(10)^(-9))
printf('coherent length=%.6f m\n\n\n',l*(10)^(-9))
printf('here coherent length is of the order of one micro meter.\n which is very very small and obtaining a path difference\n of this order between the interfering beam is difficult.\n that is why interference with white light is impossible.')