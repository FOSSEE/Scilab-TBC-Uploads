clc
disp("Problem 13.2")
printf("\n")

printf("Given")
disp("|Hv|=1/sqrt(2)             (1)")
disp("Resistance R1=5kohm")
R1=5000;
disp("Hv(w)=1/1+%i*(w/wx)        (2)")
//wx=1/(R1*C2)
//On solving we get
disp("wx=2*10^-4/C2              (3)")

disp("a)")
C2=10*10^-9;
//Taking modulus of (2)
disp("|Hv(w)|=1/sqrt(1+(w/wx)^2)")
//Equating (1) and (2)
wx=2*10^-4/C2;
fx=(wx/(2*%pi))*10^-3
printf("Frequency(a) is %3.2fkHz\n",fx)

disp("b)")
C2b=1*10^-9;
//As frequency is inversely proportional to C2 (from (3))
fx1=(C2/C2b)*fx
printf("Frequency(b) is %3.2fkHz\n",fx1)




