// Calculating the demagnetizing and cross magnetizing mmf per pole
clc;
disp('Example 9.10, Page No. = 9.38')
// Given Data
P = 500;// Power rating (in kW)
rpm = 375;// Speed in r.p.m.
p = 8;// Number of poles
flux = 0.0885;// Flux per pole (in Wb per meter)
// Calculation of the demagnetizing and cross magnetizing mmf per pole
n = rpm/60;// Speed in r.p.s.
alpha = 5/100*180;// Brush shift (in electrical degree).  Since the brushes are given a lead by of 5% of pole pitch
ATa = P/(2*flux*n*p*p*10^(-3));// Armature mmf per pole (A)
ATad = ATa*2*alpha/180;;// Demagnetizing mmf per pole (A)
ATaq = ATa-ATad;// Cross magnetizing mmf per pole (A)
disp(ATad,'Demagnetizing mmf per pole (A) =');
disp(ATaq,'Cross magnetizing mmf per pole (A) =');
//in book answers are 706 (A) and 6354 (A) respectively.  The answers vary due to round off error
