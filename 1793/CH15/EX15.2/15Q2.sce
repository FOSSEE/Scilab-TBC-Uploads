clc
G=105
c=15
C=600
b=45
Fs=3
Cd=C/Fs
c1= atand(tand(c)/Fs)

H= 4*Cd*(sind(b)*cosd(c1)/(1-cosd(b-c1)))/G
printf('The depth of the cut slope = %f ft',H)
