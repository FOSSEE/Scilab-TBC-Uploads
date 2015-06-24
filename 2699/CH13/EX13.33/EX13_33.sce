//EX13_33 Pg-18
clc
clear
printf("\n    i)\n    Detemination of value of base x \n")
printf("    (193)_x = (623)_8\n\n")
printf("    First we convert (623)_8 octal into decimal\n\n")
N=(6*8^2)+(2*8^1)+(3*8^0)
printf("          (623)_8 = (%.0f)_10\n\n",N)
printf("   Therefore (193)_x = (%.0f)_10\n\n",N)
printf("   (1*x^2)+(9*x^1)+(3*x^0) = %.0f\n\n",N)
printf("    x^2 + 9x + 3 = %.0f\n\n",N)
printf("    x^2 + 9x %.0f = 0\n\n",3-N)
a=1;
b=9;
c=-400
x1=(-b+sqrt(b^2-4*a*c))/(2*a);
x2=(-b-sqrt(b^2-4*a*c))/(2*a);
printf("Therefore x1 = %.0f\n          x2 = %.0f",x1,x2)
printf("\n   Negative is not applicable. Therefore x = %.0f",x1)
printf("\n   Hence (193)_%.0f = (623)_8\n\n",x1)

printf("\n    ii)\n    Detemination of value of base x \n")
printf("    (225)_x = (341)_8\n\n")
printf("    First we convert (341)_8 octal into decimal\n\n")
N=(3*8^2)+(4*8^1)+(1*8^0)
printf("          (341)_8 = (%.0f)_10\n\n",N)
printf("Therefore (225)_x = (%.0f)_10\n\n",N)
printf("   (2*x^2)+(2*x^1)+(2*x^0) = %.0f\n\n",N)
printf("    2x^2 + 2x +5 = %.0f\n\n",N)
printf("    2x^2 + 2x %.0f= 0\n\n",5-N)
a=2;
b=2;
c=-200
x1=(-b+sqrt(b^2-4*a*c))/(2*a);
x2=(-b-sqrt(b^2-4*a*c))/(2*a);
printf("Therefore x1 = %.0f\n          x2 = %.0f",x1,x2)
printf("\n   Negative is not applicable. Therefore x = %.0f",x1)
printf("\n   Hence (225)_%.0f = (341)_8\n\n",x1)

printf("\n    iii)\n    Detemination of value of base x \n")
printf("    (211)_x = (152)_8\n\n")
printf("    First we convert (152)_8 octal into decimal\n\n")
N=(1*8^2)+(5*8^1)+(2*8^0)
printf("          (152)_8 = (%.0f)_10\n\n",N)
printf("Therefore (211)_x = (%.0f)_10\n\n",N)
printf("   (2*x^2)+(1*x^1)+(1*x^0) = %.0f\n\n",N)
printf("    2x^2 + 1x +1 = %.0f\n\n",N)
printf("    2x^2 + 1x %.0f = 0\n\n",1-N)
a=2;
b=1;
c=-105
x1=(-b+sqrt(b^2-4*a*c))/(2*a);
x2=(-b-sqrt(b^2-4*a*c))/(2*a);
printf("Therefore x1 = %.0f\n          x2 = %.0f",x1,x2)
printf("\n   Negative is not applicable. Therefore x = %.0f",x1)
printf("\n   Hence (211)_%.0f = (152)_8\n\n",x1)
