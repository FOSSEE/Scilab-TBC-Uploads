clc
clear
//Initalization of variables
t1=45+460 //R
th=70+460 //R
t2=-200+460 //R
th2=100+460 //R
//calculations
cp1=t1/(th-t1)
cp2=th/(th-t1)
cp3=t2/(th2-t2)
cp4=th2/(th2-t2)
//results
printf("In case 1, Refrigerator cp = %.1f",cp1)
printf("\n In case 1, Heat pump cp = %.1f",cp2)
printf("\n In case 2, Refrigerator cp = %.3f",cp3)
printf("\n In case 2, Heat pump cp = %.3f",cp4)
