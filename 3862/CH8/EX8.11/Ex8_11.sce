clear
//

//variable declaration

P=(200)                     //loading,KN
E=200*1000
d1=40                //Young's modulus,N/mm^2
A= %pi*(d1**2)/4         //Area of uniform portion**mm^2 
L1=1500                    //length of uniform portion,mm 
d2=60                      //diameter of tapered section,mm
L2=500                     //length of tapered section,mm
//Extensions of uniform portion and tapering portion are worked out separately and then added to get extension of the given bar. 

//Extension of uniform portion

delta1=(P*1000*L1)/(A*E)

printf("\n delta1= %0.3f  mm",delta1)

delta2=(P*1000*4*L2)/(E*%pi*d1*d2)

printf("\n delta2= %0.3f  mm",delta2)

T=delta1 + delta2 
printf("\n Total extension %0.3f  mm",T)
