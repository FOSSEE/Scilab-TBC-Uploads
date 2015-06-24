//acids and bases//
//example 2.6//
V1=50;//volume of Hcl in ml//
V2=30;//volume of NaOH in ml//
N1=1;//normality of Hcl//
N2=1;//nomality of NaOH//
V=V1+V2;//total volume of mixure of solutions//
a=100;//percentage of ionization//
N=(N1*V1-N2*V2)/V;
printf('The normality of resultant solution is %fg.equivalent/lit',N);
H=N*a/100;
printf('\n the H+ concentration of resultant solution is %fg.ion/lit',H);
pH=-log10(H);
printf('\n the pH of resultant solution is %f',pH);

