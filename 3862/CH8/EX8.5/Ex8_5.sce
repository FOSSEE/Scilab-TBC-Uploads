clear
//

//variable declaration

P=(40)                     //Load,KN
L1=150                          //length of 1st portion,mm
A1=%pi*(25**2)/4               //Area of 1st portion**mm^2
L2=250                          //length of 2nd portion,mm
A2=%pi*(20**2)/4               //Area of 2nd portion**mm^2
L3=150                          //length of 3rd portion,mm
A3=%pi*(25**2)/4               //Area of 3rd portion**mm^2

//E,Young's modulus ,N/mm^2

//Total extension= Extension of portion 1+Extension of portion 2+Extension of portion 3

//Extension=(P*1000*L)/(A*E)

E=((P*1000*L1/A1)+(P*1000*L2/A2)+(P*1000*L3/A3))/0.28

printf("\n E= %0.2f  N/mm^2",E)
