clc
//Chapter8
//Example8.4, page no 316
//Given
d=0.7// distance between two insertions
Ld_m= (80e-3)*(10/7)//Loading coil inductance
//disp(Ld_m)
Rd_m=100/7//Loading coil resistance
//disp(Rd_m)
R=20+Rd_m//Line resistance 
L=Ld_m// Line inductance
C=0.05e-6// Line Capacitance
alfa=0.5*R*sqrt(C/L)//Attenuation Constant
//
fc=(%pi*d*sqrt(L*C))^-1//cut off freq
mprintf('The atenuation constant is %f nepers/mile\nThe Cut-off Freq is %d KHz',alfa,fc*1e-3)

// Note :  There are some calculation errors in the solution presented in the book
