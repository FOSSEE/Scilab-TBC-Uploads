clear
//

//variable declaration

P=(30)                     //Load,KN
L1=600                          //length of 1st portion,mm
A1=40*20                        //Area of 1st portion,mm^2

E1=200000          // material 1  Young’s modulus,N/mm^2
  
E2=100000          // material 2  Young’s modulus,N/mm^2
 

L2=800                          //length of 2nd portion,mm
A2=30*20                        //Area of 2nd portion,mm^2

Extensionofportion1=(P*1000*L1)/(A1*E1)  //mm
Extensionofportion2=(P*1000*L2)/(A2*E2)  //mm

Totalextensionofthebar= Extensionofportion1 + Extensionofportion2

printf("\n Total extension of the bar= %0.4f  mm",Totalextensionofthebar)
