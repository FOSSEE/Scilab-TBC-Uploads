// scilab Code Exa 18.8 Calculation on an air compressor

funcprot(0)
p1=1.0; // Initial Pressure in bar
T1=305;  // Initial Temperature in degree K
k=16; // number of stages
m=400; // mass flow rate through the compressor in kg/s
p_rc=10; // overall Pressure Ratio
gamma=1.4; // Specific Heat Ratio
cp=1.005; // Specific Heat at Constant Pressure in kJ/(kgK)
n_p=0.88; // polytropic efficiency

// part(a) Determining stage Pressure Ratio
pr=p_rc^(1/k);
disp(pr,"(a)stage Pressure Ratio is")

// part(b) Determining the stage efficiency
T2s=T1*(pr^((gamma-1)/gamma));
T2=T1*(pr^((gamma-1)/(gamma*n_p)));
n_st=(T2s-T1)/(T2-T1);
disp("%",n_st*100,"(b)stage Efficiency of the compressor is")

// part(c) Determining power required for the first stage
P1=m*cp*(T2-T1);
disp ("MW",P1/1e3,"(c)Power required for the first stage is")

// part(d)Overall Compressor Efficiency
T17=T1*exp(((gamma-1)/(gamma*n_p))*(log(p_rc))); // k+1=17;
T17s=T1*(p_rc^((gamma-1)/gamma));
n_C=(T17s-T1)/(T17-T1);
disp ("%",n_C*100,"(d)Overall Compressor Efficiency is")

// part(e) Determining power required to drive the compressor
P=m*cp*(T17-T1);
disp ("MW",P/1e3,"(e)Power required to drive the compressor is")
