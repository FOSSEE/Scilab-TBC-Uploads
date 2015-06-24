clc
Nv=7*10^18
disp("Nv = "+string(Nv)+"cm^-3")//initializing the value of valence band concentration at 300K.
Nc=4.7*10^17
disp("Nc = "+string(Nc)+"cm^-3")//initializing the value of conduction band concentration at 300K.
T1=300
disp("T = "+string(T1)+"K")//initializing the value of temperature 1.
T2=450
disp("T = "+string(T2)+"K")//initializing the value of temperature 2.
Vt1=0.0259
disp("Vt1 = "+string(Vt1)+"eV")//initializing the value of thermal voltage at 300K.
Vt2=0.03881
disp("Vt2 = "+string(Vt2)+"eV")//initializing the value of thermal voltage at 450K.
Eg=1.42
disp("Eg = "+string(Eg)+"eV")//initializing the value of thermal voltage.
no=(sqrt(Nc*Nv*(exp(-Eg/Vt1))))
disp("intrinsic concentration at 300K,no=(sqrt(Nc*Nv*(exp(-Eg/Vt1))))= "+string(no))//calculation
K1=(Nc/((T1)^(3/2)))
disp("Value of constant,K1=(Nc/((T)^(3/2)))= "+string(K1))//calculation
k1=(K1*T2^(3/2))
disp("Value of constant k1 at 450K ,k1=(K1*T2^(3/2))= "+string(k1))//calculation
K2=(Nv/((T1)^(3/2)))
disp("Value of constant,K2=(Nv/((T1)^(3/2)))= "+string(K2))//calculation
k2=(K2*T2^(3/2))
disp("Value of constant k2 at 450K ,k2=(K2*T2^(3/2))= "+string(k2))//calculation
K=k1*k2
disp("Value of constant K,= "+string(K))//calculation
no1=(sqrt(K*(exp(-Eg/Vt2))))
disp("intrinsic concentration at 450K,no=(sqrt(K*(exp(-Eg/Vt2))))= "+string(no1)+" cm^3")//calculation
//this is solved problem 2.17 of chapter 2.



