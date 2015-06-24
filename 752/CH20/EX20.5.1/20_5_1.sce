clc;
//page no 780
//prob no. 20.5.1
//3 semiconductor diodes are given
E1=1.9;E2=1.46;E3=0.954;eV=1.9;//All in eV
c=3*10^8;//speed of light
//a)Determination of wavelength and freq for E1=1.9
wav1=1.241/E1;f1=c/(wav1*10^-6);
disp('um',wav1,'a)i)the wavelength is');
disp('Hz',f1,'a)ii)the freq is');
//b)Determination of wavelength and freq for E2=1.46
wav2=1.241/E2;f2=c/(wav2*10^-6);
disp('um',wav2,'b)i)the wavelength is');
disp('Hz',f2,'b)ii)the freq is');
//c)Determination of wavelength and freq for E3=0.945
wav3=1.241/E3;f3=c/(wav3*10^-6);
disp('um',wav3,'c)i)the wavelength is');
disp('Hz',f3,'c)ii)the freq is');
