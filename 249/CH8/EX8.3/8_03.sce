clear
clc
CAo=185;CA=100;t=30;
//As A disappears by 1st Order kinetics
//ln(CAo/CA)=K123t
K123=log(CAo/CA)/t;
//From the initial rate of formation of R
//dCR/dt(m1)=k2*CAo
m1=2;
k2=m1/CAo;
////From the initial rate of formation of R
m2=1.3;
k1=m2/CAo;
k3=K123-k1-k2;
//Looking at the maxima of S and T curves
//For S,CSmax/CAo=(k1/k123)*(k123/k4)^(k4/(k4-k123))
//trial and error 
for k4=0.0001:0.0001:0.1
    Csmax=CAo*(k1/K123)*((K123/k4)^(k4/(k4-K123)));
    if  Csmax>31.8 & Csmax<32.2
        break
    end
end
//similarly for T
for k5=0.001:0.0001:0.02
    Ctmax=CAo*(k3/K123)*((K123/k5)^(k5/(k5-K123)));
    if Ctmax>9.95 & Ctmax<10.08
        break
    end
end
printf("\n The rate constants are")
printf("\n k1= %f",k1)
printf("\n k2= %f",k2)
printf("\n k3= %f",k3)
printf("\n k4= %f",k4)
printf("\n k5= %f",k5)