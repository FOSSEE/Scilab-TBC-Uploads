clear;
clc;
format('v',6);
Er=3.8, c=3*10^8;
r=4.5;//ratio w/h
Eeff= ((Er+1)/2)+ ((Er-1)/(2*(1+12/r)^.5));
disp(Eeff, 'The effective relative permittivity = ');
Zo=(120*%pi)/((r+1.393+ (.667*log(r+1.444)))*((Eeff)^.5));
disp(Zo, 'Character impedence of line');
f=10^10;
l=c/(f*sqrt(Eeff));
disp(l*1000, 'The wavelength of line at 10 GHz');
