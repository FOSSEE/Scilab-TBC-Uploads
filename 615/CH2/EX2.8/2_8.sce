//acids and bases//
//example 2.8//
W=2;//weight of NaOH dissolved in water in grams//
M=40;//molecular weight of NaOH//
N=W/M;//normality//
a=100;//percentage of ionization//
printf('the normality of NaOH solution is %fg.equivalent/lit',N);
OH=N*a/100;//the OH- ion concentration of solution//
Kw=10^-14;
H=Kw/OH;
pH=-log10(H);
printf('\n The pH of the NaOH solution is %f',pH);