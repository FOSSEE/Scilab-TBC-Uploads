//chapter 18
//example 18.11
//page 788
printf("\n")
printf("given")
Vo=10;Io=1;Vce=7;Vf=1;
Po=Vo*Io
disp(" linear regulator")
Pi=Po+(Vce*Io)
n=(Po*100)/Pi//efficiency
disp(" switching regulator")
Vce=1;
Pi=Po+Io*(Vce+Vf)
n=(Po*100)/Pi//efficiency