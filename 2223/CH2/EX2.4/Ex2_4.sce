// Exa 2.4 compressor with same temperature rise

p1=1.0; // Initial Pressure in bar
t1=40;  // Initial Temperature in degree C
T1=t1+273; // in Kelvin
s=8; // number of stages
pr=1.35;
opr=pr^s; // Overall Pressure Ratio
n=0.82; // Overall Efficiency 
p9=opr*p1;
gamma=1.4;
delTc=(T1*(opr^((gamma-1)/gamma)-1)/n);
delTi=delTc/s;
T9=T1+delTc;
n_p=((gamma-1)/gamma)*((log(p9/p1))/(log(T9/T1))); // small stage Efficiency or polytropic efficiency
m=8;
T(1)=T1;
for i=1:m
    T(i+1)=T(i)+delTi;
    pr(i)=(1+(delTi/T(i)))^(n_p/((gamma-1)/gamma));
    n_st(i)=(pr(i)^((gamma-1)/gamma)-1)/(pr(i)^(((gamma-1)/gamma)/n_p)-1);
disp(T(i),"T is");
disp(pr(i),"pressure ratio is")
disp(n_st(i),"efficiency is" )
end
