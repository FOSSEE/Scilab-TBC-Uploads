clc
T13=70
T1f=130
T11=T13+T1f

T23=160
T2f=223.5
T21=T23+T2f

a= 2*(atand(((T11-T21)/(T13-T23))^0.5)-45)
c= (T11-T13*(tand(45+a/2))^2)/(2*tand(45+a/2))
printf('the shear strength parameter c = %f kN/m^2',c)
