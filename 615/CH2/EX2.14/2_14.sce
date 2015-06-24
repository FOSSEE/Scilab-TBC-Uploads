//acids and bases//
//example 2.14//
C1=0.06;//concentration od acetic acid in g.mol/lit//
C2=0.04;//concentration of sodium acetate in g.mol/li//
disp("Due to the fact sodium acetate being completely dissociated avd acetic acid in the presence of former,the acetate ions are mainly obtained from the former");
printf("the concentration of acetate ions are %fg.ion/lit",C2);
K=1.8*10^-5;//dissociation constant of acetic acid//
H=K*C1/C2;
printf("\nthe H+ concentration of the solution is %fg.ion/lit",H);
pH=-log10(H);
printf("\nThe pH of solution is %f",pH);