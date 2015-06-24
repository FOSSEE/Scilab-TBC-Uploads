// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 2, Example 6")
//The thickness of plate 20mm or .02m with uniform heat generation qg=80MW/m^3
//The thermal conductivity of wall(k)is 200W/m*K.
k=200;
//The left and right faces are kept at tempratures T=160°C and T=120°C respectively
//We start with the equation (d^2T/dx^2)+(qg/k)=0 or T=-(qg/2k)*x^2 +(c1*x)+c2 
//With qg=80*10^6W/m^3 and k=200W/(m*K)
//Applying boundary condition at x=0,T=160°C and x=0.02,T=120°C we get constant c2=160°C and c2=2000m^-1
//Hence T=160+2*10^3*(x-100*x^2)----->eq.1
disp("(a)The expression for the temprature distribution in the plate T=160+2*10^3*(x-100*x^2)" )
//For maximum temprature differentiating eq.1 with respect to x and equating it to zero...we get dT/dx=(2*10^3)-(4*10^5*x)=0,which gives x=0.005m=5mm
disp("(b)The maximum temprature occurs at x=5mm or 0.005m away from the left surface towards the right")
x=0.005;
//The maximum temprature is Tmax
disp("The maximum temprature(Tmax) in °C is")
Tmax=160+2*10^3*(x-100*x^2)
//The rate of heat transfer(q/A) is given by -k*(dT/dx)
//Let dT/dx=X and (q/A)=Q
disp("(c(i))The rate of heat transfer at the left face in MW/m^2 is")
//For left face x=0
x=0;
X=(2*10^3)-(4*10^5*x);
Q=-k*X/10^6
disp("The minus sign indicates that the heat flow in the negative direction")
disp("(c(ii))The rate of heat transfer at the right face in MW/m^2 is")
//For right face x=0.02
x=0.02;
X=(2*10^3)-(4*10^5*x);
Q=-k*X/10^6
//(q/A)@x=0 implies rate of heat transfer at the position where x=0. 
disp("The minus sign for (q/A)@x=0 and the plus sign for (q/A)@x=0.02 indicates that heat is lost from both the surfaces to surroundings")
disp("(c(iii))The rate of heat transfer at the centre in MW/m^2 is")
//For centre x=0.01
x=0.01;
X=(2*10^3)-(4*10^5*x);
Q=-k*X/10^6
//A check for the above results can be made from an energy balance of the plate as |(q/A)|@x=0+|(q/A)|@x=0.02=qG*0.02



