//Example 5_7 page no:197
clc
V=20;
f=5*10^3;//frequency in Hz
R=100;
C=0.2*10^-6//capacitance in farad
Xc=1/(2*%pi*f*C)
Ir=V/R
disp(Ir,"current in the resistance branch is (in A)")
Ic=V/Xc
disp(Ic,"current in the capacitive branch is (in A)")
It=Ir+(%i*Ic)
disp(It,"total current is (in A)")
[It_polar,Theta]=polar(It)
Theta=atand(Ic/Ir)
Z_mag=V/It_polar
Z_ang=0-Theta;
disp(It_polar,"the magnitude of current is (in A)")
disp(Theta,"the angle of current is (in degree)")
disp(Z_mag,"the magnitude of total impedance is (in ohm)")
disp(Z_ang,"the angle of total impedance is (in degree)")
disp("the values varies slightly with text book hence values are rounded off in text book")
//the values varies slightly with text book hence values are rounded off in text book
