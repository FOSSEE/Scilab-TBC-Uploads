clear
//Given
u=-60.0                    //cm
R=25.0                     //cm
y1=1
y2=1.5

//Calcution
v=1/((((y2-y1)/R)+(y1/u))/y2)
P=(y2-y1)/(R*10**-2)

//Result
printf("\n Position of the image is %0.3f  cm", v)
printf("\n Power of the refracting surface is %0.3f  dioptre", P)
