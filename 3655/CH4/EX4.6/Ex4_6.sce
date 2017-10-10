// Example 4.6
// Computation for concentration of free electrons and holes for case(A),case(B),case(C) and case(D)//
// Page no.98

clc;
clear;
close;

//Given data ;
NA=3*10^14;
ND=2*10^14;
ni=2.5*10^13;
mu_n=3800;//3800cm2/V sec
e=1.60*10^-19;
mu_p=1800;//1800cm2/V sec
NA1=10^15;
ND1=10^15;
T1=400;
T2=300;
EGO=0.785;
kT2=0.0259;
NA2=0;
ND2=10^15;

//.................................(A)......................................//

//Calculation for concentration of electrons//
n=(1/2)*((ND-NA)+(sqrt((NA-ND)^2+(4*ni^2))));

//Calculation for concentration of holes//
p=(ni^2)/n;

//Calculation for conductivity of electrons//
sigma_n=n*mu_n*e;

//Calculation for conductivity of holes//
sigma_p=p*mu_p*e;

//Calculation for P1//
P1=sigma_p/sigma_n;

//Calculation for P2//
P2=mu_p/mu_n;

//Thus P1 is greater than P2 which implies that the conductivity is primarily due to holes in the given sample. Hence the sample is a p-type germanium//

//.................................(B)......................................//

//Calculation for concentration of electrons//
n1=(1/2)*((ND1-NA1)+(sqrt((NA1-ND1)^2+(4*ni^2))));

//Calculation for concentration of holes//
p1=(ni^2)/n1;

//Calculation for conductivity of electrons//
sigma_n1=n1*mu_n*e;

//Calculation for conductivity of holes//
sigma_p1=p1*mu_p*e;

//Calculation for P3//
P3=sigma_p1/sigma_n1;

//Hence the sample is an intrinsic germanium//

//.................................(C)......................................//

//Calculation for ni1 at T=400 degreeK//
ni_400=(((T1/T2)^3)*(exp((EGO/kT2)*(1-(T2/T1)))*(2.5*10^13)^2))^(1/2);

//Calculation for concentration of electrons//
n2=(1/2)*((ND-NA)+(sqrt((NA-ND)^2+(4*ni_400^2))));

//Calculation for concentration of holes//
p2=(ni_400^2)/n2;

//ratio of conductivities due to holes and electrons is given by sigma_P/sigma_n=sigma_pi/sigma_ni, hence the germanium sample under consideration is essentially intrinsic//

//.................................(D)......................................//

//Calculation for concentration of electrons//
n3=(1/2)*((ND2-NA2)+(sqrt((NA2-ND2)^2+(4*ni^2))));

//Calculation for concentration of holes//
p3=(ni^2)/n3;

//ratio of conductivities due to holes and electrons is given by sigma_P/sigma_n=sigma_pi/sigma_ni, hence the coductivity due to holes is almost negligible as compared to that of electrons in the sample, the sample is essentialy n-type//



//Displaying the result in command window
printf(".........................Part (A)..................................");
printf('\n \n Concentration of electrons = %0.2f x 10^12 cm^-3',n*10^-12);
printf('\n \n Concentration of holes = %0.2f x 10^14 cm^-3',p*10^-14);
printf('\n \n Conductivity of electrons = %0.4f (ohm cm)^-1',sigma_n);
printf('\n \n Conductivity of holes = %0.4f (ohm cm)^-1',sigma_p);
printf('\n \n Ratio of Conductivity of holes to the Conductivity of electrons = %0.2f ',P1);
printf('\n \n Ratio of Conductivity of holes to the Conductivity of electrons in an intrinsic germanium = %0.2f ',P2);
printf("\n \n .........................Part (B)..................................");
printf('\n \n Concentration of electrons = %0.1f x 10^13 cm^-3',n1*10^-13);
printf('\n \n Concentration of holes = %0.1f x 10^13 cm^-3',p1*10^-13);
printf('\n \n Conductivity of electrons = %0.4f (ohm cm)^-1',sigma_n1);
printf('\n \n Conductivity of holes = %0.4f (ohm cm)^-1',sigma_p1);
printf('\n \n Ratio of Conductivity of holes to the Conductivity of electrons = Ratio of Conductivity of holes to the Conductivity \n of electrons in an intrinsic germanium = %0.2f ',P3);
printf("\n (Hence the sample is an intrinsic germanium)");
printf("\n \n .........................Part (C)..................................");
printf('\n \n Intrinsic Concentration at T=400 degreeK = %0.1f x 10^15 cm^-3',ni_400*10^-15);
printf('\n \n Concentration of electrons = %0.2f x 10^15 cm^-3',n2*10^-15);
printf('\n \n Concentration of holes = %0.2f x 10^15 cm^-3',p2*10^-15);
printf("\n \n .........................Part (D)..................................");
printf('\n \n Concentration of electrons = %0.4f x 10^15 cm^-3',n3*10^-15);
printf('\n \n Concentration of holes = %0.4f x 10^11 cm^-3',p3*10^-11);



//Answers are varying due to round off error//
