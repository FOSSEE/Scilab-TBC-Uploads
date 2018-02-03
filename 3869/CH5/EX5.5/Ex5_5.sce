clear
//
//
//

//Variable declaration
n1=1.5          //Core refractive index
n2=1.49         //Cladding refractive index
a=25*10**-6     //radius of core(m)
L=1             //distance(m)

//Calculation
phic=(asin(n2/n1)*180/%pi )       //critical angle(degrees)

phicr=phic*%pi/180                  //critical angle(radian) 
l=2*a*tan(phicr)                //fibre length(m) 
r=1/l                        //number of reflections
od=L/sin(phicr)         //total distance travelled by light(m)

//Result
printf("\n critical angle is %0.3f  degrees",phic)
printf("\n fibre length is %0.2f  micro m",l*10**6)
printf("\n answer for fibre length given in the book is wrong")
printf("\n number of reflections is %0.3f  ",r)
printf("\n total distance travelled by light is %0.4f  m",od)
