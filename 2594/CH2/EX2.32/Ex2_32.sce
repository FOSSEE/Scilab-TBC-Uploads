clc
Nv=6*10^18
disp("Nv = "+string(Nv)+"cm^-3")//initializing the value of valence band concentration at 300K.
Nc=1.04*10^19
disp("Nc = "+string(Nc)+"cm^-3")//initializing the value of conduction band concentration at 300K.
T1=300
disp("T1 = "+string(T1)+"K")//initializing the value of temperature 1.
T2=200
disp("T2 = "+string(T2)+"K")//initializing the value of temperature 2.
Vt1=0.0259
disp("Vt1 = "+string(Vt1)+"eV")//initializing the value of thermal voltage at 300K.
Vt2=0.0173
disp("Vt2 = "+string(Vt2)+"eV")//initializing the value of thermal voltage at 200K.
Eg1=0.60
disp("Eg1 = "+string(Eg1)+"eV")//initializing the value of thermal voltage used for 300K .
no=(sqrt(Nc*Nv*(exp(-Eg1/Vt1))))
disp("intrinsic concentration at 300K,no=(sqrt(Nc*Nv*(exp(-Eg1/Vt1))))= "+string(no))//calculation
Eg2=0.66
disp("Eg2 = "+string(Eg2)+"eV")//initializing the value of thermal voltage used for 200K.
K1=(Nc/((T1)^(3/2)))
disp("Value of constant,K1=(Nc/((T)^(3/2)))= "+string(K1))//calculation
k1=(K1*T2^(3/2))
disp("Value of constant k1 at 200K ,k1=(K1*T2^(3/2))= "+string(k1))//calculation
K2=(Nv/((T1)^(3/2)))
disp("Value of constant,K2=(Nv/((T1)^(3/2)))= "+string(K2))//calculation
k2=(K2*T2^(3/2))
disp("Value of constant k2 at 200K ,k2=(K2*T2^(3/2))= "+string(k2))//calculation
K=k1*k2
disp("Value of constant K,= "+string(K))//calculation
no1=(sqrt(K*(exp(-Eg2/Vt2))))
disp("intrinsic concentration at 200K,no=(sqrt(K*(exp(-Eg2/Vt2))))= "+string(no1)+" cm^3")//calculation

//this is solved problem 2.20 of chapter 2.
//The answer of intrinsic concentration at 300K,(no) is provided wrong in the book.


