clc
Nv=1.04*10^19
disp("Nv = "+string(Nv)+"cm^-3")//initializing the value of valence band concentration at 300K.
Nc=2.8*10^19
disp("Nc = "+string(Nc)+"cm^-3")//initializing the value of conduction band concentration at 300K.
T1=300
disp("T = "+string(T1)+"K")//initializing the value of temperature 1.
T2=550
disp("T = "+string(T2)+"K")//initializing the value of temperature 2.
Vt1=0.0259
disp("Vt1 = "+string(Vt1)+"eV")//initializing the value of thermal voltage at 300K.
Vt2=0.0474
disp("Vt2 = "+string(Vt2)+"eV")//initializing the value of thermal voltage at 550K.
Eg1=1.12
disp("Eg1 = "+string(Eg1)+"eV")//initializing the value of thermal voltage.
no=(sqrt(Nc*Nv*(exp(-Eg1/Vt1))))
disp("intrinsic concentration at 300K,no=(sqrt(Nc*Nv*(exp(-Eg1/Vt1))))= "+string(no))//calculation
K1=(Nc/((T1)^(3/2)))
disp("Value of constant,K1=(Nc/((T)^(3/2)))= "+string(K1))//calculation
k1=(K1*T2^(3/2))
disp("Value of constant k1 at 550K ,k1=(K1*T2^(3/2))= "+string(k1))//calculation
K2=(Nv/((T1)^(3/2)))
disp("Value of constant,K2=(Nv/((T1)^(3/2)))= "+string(K2))//calculation
k2=(K2*T2^(3/2))
disp("Value of constant k2 at 550K ,k2=(K2*T2^(3/2))= "+string(k2))//calculation
K=k1*k2
disp("Value of constant K,= "+string(K))//calculation
no1=(sqrt(K*(exp(-Eg1/Vt2))))
disp("Intrinsic concentration at 550K,no=(sqrt(K*(exp(-Eg1/Vt2))))= "+string(no1)+" cm^3")//calculation
Nd=(4*(no1^2)/(1.2))
disp("Donor concentration at which intrinsic concentration is 10% of the total electron concentration,Nd=(4*(no1^2)/(1.2))= "+string(Nd)+" cm^3")//calculation
//this is solved problem 2.18 of chapter 2.
//the value of temperature and % of the intrinsic carrier concentration given in the question is different than used in the solution. 
//I have used the value provided in the solution (i.e T2=550 and % of the intrinsic carrier concentration =10%)
//the value of Donor concentration at which intrinsic concentration is 10% of the total electron concentration(Nd),is provided wrong in the book after calculation.


