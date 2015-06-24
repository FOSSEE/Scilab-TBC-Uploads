clc
clear
//Initialization of variables
R=8314.3
T=700 //K
T2=437.5 //K
T3=350 //K
T4=T3
p2=0.552 //Mpa
p1=2.758 //Mpa
cp=29.3
R0=8.3
k=1.4
//calculations
cv=cp-R0
Q1=-R*T*log(p2/p1)
Q2=cv*(T2-T)
dH2= cp*(T2-T)
p3=p2*T3/T2
p3=0.345
Q3=cp*(T3-T2)
dE3=cv*(T3-T2)
W3=Q3-dE3
T5=T4*(p1/p3)^((k-1)/k)
dH4= cp*(T5-T4)
W4=-cv*(T5-T4)
Q5= cp*(T-T5)
dE5=cv*(T-T5)
W5=Q5-dE5
//results
disp("part a isothermal")
printf("dH = 0, dE=0,  Q= W = %d kJ/kmol",Q1/10^3)
disp("part 2 isometric")
printf("dH = %d kJ/kmol, W=0,  Q= dE = %d kJ/kmol",dH2,Q2)
disp("part 3 isobaric")
printf("dE = %d kJ/kmol, W= %d kJ/kmol,  Q= dH = %d kJ/kmol",dE3,W3,Q3)
disp("part 4 adiabatic")
printf("dH = %d kJ/kmol, W= -dE = %d kJ/kmol,  Q= 0 kJ/kmol",dH4,W4)
disp("part 5 isobaric")
printf("dE = %d kJ/kmol, W= %d kJ/kmol,  Q= dH = %d kJ/kmol",dE5,W5,Q5)
disp("The graph cannot be plotted since volume axis values are not known. In the textbook it is randomly drawn to be of that shape.")
