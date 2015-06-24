clc,clear
//Example 6.13
//To determine the cube roots of i

z=%i //given complex number
//modulii for cuberoots
r1=abs(z)^(1/3)
r2=abs(z)^(1/3)
r3=abs(z)^(1/3)

//arguements for cuberoots
theta1= (phasemag(z)+360*0)/3
theta2= (phasemag(z)+360*1)/3
theta3= (phasemag(z)+360*2)/3

cube_root_1 = r1 *(cosd(theta1)+ %i*sind(theta1))
cube_root_2 = r2 *(cosd(theta2)+ %i*sind(theta2))
cube_root_3 = r3 *(cosd(theta3)+ %i*sind(theta3))

printf('cuberoot 1: %f + %f*i\n',real(cube_root_1),imag(cube_root_1))
printf('cuberoot 2: %f + %f*i\n',real(cube_root_2),imag(cube_root_2))
printf('cuberoot 3: %f + %f*i\n',real(cube_root_3),imag(cube_root_3))
