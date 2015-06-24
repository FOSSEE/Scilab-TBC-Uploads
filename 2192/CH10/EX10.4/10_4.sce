clc,clear
printf('Example 10.4\n\n')

I = 500 //intensity_of_lamp
d=sqrt(4^2 + 3^2 )

//part(i) : Illumination below the lamp
E_1=I/d^2  //as cos(theta) is 1
printf('(i)Illumination below the lamp= %.0f lux',E_1)

//part(ii) : Illumination 3m away from vertical axis
theta=acos(4/5)
E_2= I*cos(theta)/d^2
printf('\n(ii)Illumination 3m away from vertical axis= %.0f lux',E_2)
