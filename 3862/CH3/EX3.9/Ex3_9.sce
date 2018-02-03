clear
//

//To determine reactions, consider equilibrium equations

//variable declaration
//all Vertical loading are in KN
PL1=200.0               
PL2=200.0
PL3=150.0
PL4=100.0
PL5=100.0

//length in m
UL1=6.0
UL2=8.0
UL3=9.0
UL4=UL2
UL5=UL1

L1=6.0
L2=6.0
L3=6.0
L4=6.0
L5=6.0
L6=6.0

//moment at point LO

R2=(PL1*L1+PL2*(L1+L2)+PL3*(L1+L2+L3)+PL4*(L1+L2+L3+L4)+PL5*(L1+L2+L3+L4+L5))/(L1+L2+L3+L4+L5+L6)

R1=PL1+PL2+PL3+PL4+PL5-R2

//Take the section (1)–(1) and consider the right hand side part.

U3U4=sqrt((1**2)+(UL1**2))
theta1=asin(1/U3U4)

L3U4=sqrt((UL1**2)+(UL2**2))
theta2=asin(6/L3U4)

//moment at U4

FL3L4=(R2*(L5+L6)-PL4*L4)/UL4

printf("\n FL3L4= %0.1f KN (Tension)",FL3L4)

//moment at L3
FU4U3=(-PL4*L4-PL5*(L4+L5)+R2*(L4+L5+L6))/(cos(theta1)*UL3)
printf("\n FU4U3= %0.1f KN (Comp.)",FU4U3)

//sum of horizontal forces 
FL4L3=FL3L4
FU4L3=(-FL4L3+FU4U3*cos(theta1))/sin(theta2)
printf("\n FU4L3= %0.1f KN (Tension)",FU4L3)
