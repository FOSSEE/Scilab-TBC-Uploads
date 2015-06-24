//magnitude of the reflection coefficent
//given
clc
zl=10*%i//ohm
z0=100//ohm
row=(zl-z0)/(zl+z0)//reflection coefficent
mag_row=norm(row)//magnitude of reflection coefficent
disp(mag_row,'the magnitude of the reflection coefficent:')
