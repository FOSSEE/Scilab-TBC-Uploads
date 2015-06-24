
//example 2-2 in page 20
clc;
//given data
V1=100;//stated voltage one
V2=80;//stated voltage two
e1=(1/100)*V1;//absolute error of v1
e2=(5/100)*V2;//absolute error of v2
//calculation
e=e1+e2;//absolute error for the sum of the voltages
E=V1-V2;// difference voltage
emax=(e/E)*100;//maximum percentage error
printf("E=%d V +/- %d percent",E,emax);
//result
//E=20 V +/- 25 percent 