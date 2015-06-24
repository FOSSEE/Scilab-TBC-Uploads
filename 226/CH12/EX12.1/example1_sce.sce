//chapter 12
//example 12.1
//page 474
printf("\n")
printf("given")
hfe=50;hie=1*10^3;hib=20;f1=100;Rc=3.3*10^3;Re=Rc;
disp(" required capacitance")
Xc2=hib;
C2=1/(2*3.14*f1*Xc2)
disp(" voltage gain with emitter terminal completely bypassed to ground")
Av=-(hfe*Rc)/hie
disp("voltage gain  when f=100")
Av=-(hfe*Rc)/sqrt(((hie^2)+((1+hfe)*Xc2)^2))
disp(" voltage gain when C2 is incorrectly selected as Xc2=Re/10")
Avx=-(hfe*Rc)/sqrt(((hie^2)+((1+hfe)*(Re/10))^2))