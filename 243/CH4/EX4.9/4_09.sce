//Example No. 4_09
//Propagation of Error
//Pg No. 75
clear ; close ; clc ;

x = 0.1234*10^4
y = 0.1232*10^4
d = 4
er_x = 10^(-d + 1)/2
er_y = 10^(-d + 1)/2
ex = x*er_x
ey = y*er_y
ez = abs(ex) + abs(ey)
er_z = abs(ez)/abs(x-y)

mprintf('\n |er_x| <= %.2f o/o\n |er_y| <= %.2fo/o \n ex = %.3f \n ey = %.3f \n |ez| = %.3f \n |er_z| = %.2fo/o \n',er_x *100,er_y*100,ex,ey,ez,er_z*100)