clc
//Chapter7
//Ex_3
//Given
//let epsilon=E
Eo=8.85*10^-12 //in F/m
Ni=1.43*10^28//in m^-3
alpha_e_Cs=3.35*10^-40 //F m2
alpha_e_Cl=3.40*10^-40 //F m2
alpha_i=6*10^-40 //F m2
//(Er-1)/(Er+2)=(1/(3*E0))*(Ni*alpha_e(Cs+)+Ni*alpha_e(Cl-)+Ni*alpha_i)
//let x=(1/(3*E0))*(Ni*alpha_e(Cs+)+Ni*alpha_e(Cl-)+Ni*alpha_i)
//after few mathematical steps we get
//Er=(2*x+1)/(1-x)
x=(1/(3*Eo))*(Ni*alpha_e_Cs+Ni*alpha_e_Cl+Ni*alpha_i)
Er=(2*x+1)/(1-x)
disp(Er,"Dielectric constant at low frequency is")
//similarly
//let y=(1/(3*E0))*(Ni*alpha_e(Cs+)+Ni*alpha_e(Cl-))
//after few mathematical steps we get
//Erop=(2*x+1)/(1-x)
y=(1/(3*Eo))*(Ni*alpha_e_Cs+Ni*alpha_e_Cl)
Erop=(2*y+1)/(1-y)
disp(Erop,"Dielectric constant at optical frequency is")
