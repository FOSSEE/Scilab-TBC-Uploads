clc
//Chapter9
//Example9.6
//Given
//b
c=3e8
f=2e9//operating freq
Ae=100//aperture area
lambda=c/f// operating wavwlength
D=((4*3.141*Ae)/(lambda^2))// Directivity
mprintf('Ideal directive gain is %d',D)

