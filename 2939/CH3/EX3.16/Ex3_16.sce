//Ex3_16
clc;
// Given:
E2=44;// in keV
En1=146;// in keV
En2=304;// in keV
En3=514;// in keV
// Solution:
n1=(En1)/E2;
n2=(En2)/E2;
n3=(En3)/E2;
printf("%f",n1)
printf("\n For the required level of energy 146 keV nearest even integer is = %d & spin is (+)",n1+1)
printf("\n \n %f",n2)
printf("\n For the required level of energy 304 keV nearest even integer is = %d & spin is (+)",n2)
printf("\n \n %f",n3)
printf("\n For the required level of energy 514 keV nearest even integer is = %d & spin is (+)",n3+1)

//Note: In the last part (c) the answer given in the textbook is 8(+). But the correct answer is 12(+)
