// scilab Code Exa 2.3 Calculation on a compressor
p1=1.0; // Initial Pressure in bar
t1=40;  // Initial Temperature in degree C
T1=t1+273; // in Kelvin
s=8; // number of stages
m=50; // mass flow rate through the compressor in kg/s
pr=1.35; // equal Pressure Ratio in each stage
opr=pr^s; // Overall Pressure Ratio
gamma=1.4; // Specific Heat Ratio
cp=1.005; // Specific Heat at Constant Pressure in kJ/(kgK)
n=0.82; // Overall Efficiency

// part(a) Determining state of air at the compressor exit
p9=opr*p1;
delTc=T1*(opr^((gamma-1)/gamma)-1)/n;
T9=T1+delTc;
disp("bar",p9,"(a)Exit Pressure is")
disp("K",T9,"and Exit Temperature is")

// part(b) Determining the polytropic or small stage efficiency
n_p=((gamma-1)/gamma)*((log(p9/p1))/(log(T9/T1)));
disp("%",n_p*100,"(b)small stage Efficiency or polytropic efficiency of the compressor is")

// part(c) Determining efficiency of each stage
n_st=(pr^((gamma-1)/gamma)-1)/(pr^(((gamma-1)/gamma)/n_p)-1);
disp ("%",n_st*100,"(c)Efficiency of each stage is")

// part(d) Determining power required to drive the compressor
n_d=0.9; // Overall efficiency of the drive
P=m*cp*delTc/n_d;
disp ("MW" ,P/1e3,"(d)Power required to drive the compressor is")
