//ques-22.7
//Calculating interionic distance and radius of cation
clc
a=387;//unit distance (in pm)
Ra=181;//radius of anion (in pm)
//BCC structure
d=sqrt(3)*(a/2);//interionic distance (in pm)
Rc=d-Ra;//radius of cation (in pm)
printf("The interionic distance is %.2f pm and radius of ammonium cation is %.2f pm.",d,Rc);
