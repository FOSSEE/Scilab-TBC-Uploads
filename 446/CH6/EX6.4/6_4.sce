clear 
clc
disp('Exa-6.4');
sl=820.1;n0=3;  //given values
n=4;w=sl*(n^2/(n^2-n0^2)); printf('The 3 longest possible wavelengths are %.0f nm,',w);    
n=5;w=sl*(n^2/(n^2-n0^2)); printf('%.0f nm,',w);
n=6;w=sl*(n^2/(n^2-n0^2)); printf('& %.0f nm ',w);
