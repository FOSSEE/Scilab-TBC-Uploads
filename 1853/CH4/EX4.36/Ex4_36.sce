
//calculate freq at resonance
C=30*10^-6
L=0.2
R=12
F= sqrt(1/(L*C)-R^2/(L*L))
f=1/(2*3.14)*F
disp(('freq at resonance='+string(f)+'hz'))
