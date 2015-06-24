//caption:Find value of shunt resistance for the range(a)0-1A(b)0-5A(c)0-10A
//Ex5.6
clc
clear
close
Im=0.001//meter current(in A)
I1=1//maximum range(in A)
I2=5//maximum range(in A)
I3=10//maximum range(in A)
R=100//internal resistance(in ohm)
Rs1=(R/((I1/Im)-1))
disp(Rs1,'(a)shunt resistance(in ohm)=')
Rs2=(R/((I2/Im)-1))
disp(Rs2,'(b)shunt resistance(in ohm)=')
Rs3=(R/((I3/Im)-1))
disp(Rs3,'(c)shunt resistance(in ohm)=')