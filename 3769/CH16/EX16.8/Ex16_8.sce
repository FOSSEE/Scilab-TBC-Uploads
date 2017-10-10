clear
//Given
R=30                      //ohm
u=-10.0                     
h1=5

//Calculation
f=R/2.0
v=1/((1/f)-(1/u))
h2=(-v*h1)/u

//Result
printf("\n Position of the image is %0.3f  cm", v)
printf("\n Size of the image is %0.3f  cm",h2)
printf("\n The image is virtual")
