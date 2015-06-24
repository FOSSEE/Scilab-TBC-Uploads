//acida and bases//
//example 2.3//
//(a)//
N1=0.1;//normality of acetic acid//
a1=1.3;//percentage of ionization//
H1=N1*a1/100;
printf('the hydrogen ion concentration of solution is %fg.ion/lit',H1);
//(b)//
M1=10^-8;//molarity of hcl solution//
a=100;//percentage of ionization//
H=M1*a/100;

pH=-log10(H);
printf('\nthe pH of the Hcl solution is %f',pH);
disp("Theoretically the pH should be 8,however,the value will be close to 7 because H+ ions of water also plays a role");
//(c)//
N2=0.05;//normality of Hcl//
a2=100;//percentage of ionization//
pH2=-log10(N2*a2/100);
printf('\nthe pH of 0.05 Hcl solution is %f',pH2);
M3=0.05;//molarity os H2SO4//
N3=M3*2;//normality//
a3=100;//percentage of ionization//
pH3=-log10(N3*a3/100);
printf('\n the pH of 0.05M H2SO4 solution is %f',pH3);
