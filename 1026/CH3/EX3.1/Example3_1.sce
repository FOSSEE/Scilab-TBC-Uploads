//chapter-3,Example3_1,pg 67

S=2*10^-6

T=2000

A=60.2*10^4

b=52400//Q/K

e=1.6*10^-19

I=A*S*(T^2)*(%e^(-(b/T)))

J=A*(T^2)*(%e^(-(b/T)))

no=J/e

printf("maximum obtainable electronic emission current\n")

disp(I)

printf("\nemission current density\n")

printf("J=%.3f A/m2",J)

printf("\nno. of electrons emitted per unit area per sec.\n")

disp(no)