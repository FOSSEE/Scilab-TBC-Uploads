// Regulation at laggiing leading and unity power factors

clc;
clear;

ol=0.01;// Ohmic loss is 1% of the output

// Output = V*I; Ohmic loss =(I^2)*R

//(I*R)/V = 0.01

rd=0.05; // Reactance drop is 5% of the output voltage

// Power Factors
pf1=0.8;// lag
pf2=1; // unity
pf3=0.8;// lead

deff('y=angle(x)','y=acosd(x)');// Function to find out the angle

// Angles
t1=angle(pf1);// Positive sign as it is lagging
t2=angle(pf2);
t3=-angle(pf3); // Minus sign as it is leading

deff('a=vr(b)','a=((ol*cosd(b))+(rd*sind(b)))*100');// Function to find out voltage regulation

printf('The voltage regulation percentages is as follows \n')
printf('a) For 0.8 p.f lag = %f percent \n',vr(t1))
printf('b) For unity p.f = %f percent \n',vr(t2))
printf('c) For 0.8 p.f lead = %f percent \n',vr(t3)) 
