clc
Eg1=2
disp("Eg1 = "+string(Eg1)+" eV") //initializing the value of band energy gap for semiconductor1.
Eg2=2.2
disp("Eg2 = "+string(Eg2)+" eV")//initializing the value of band energy gap for semiconductor2.
Vt=0.0259
disp("Vt = "+string(Vt)+" eV")//initializing the value of thermal voltage at 300K.
No=sqrt(exp((-Eg1/Vt)-(-Eg2/Vt)))
disp("Ratio of their intrinsic concentration at 300K,(no1/no2)=sqrt(exp((-Eg1/Vt)-(-Eg2/Vt)))= "+string(No))//calculation
