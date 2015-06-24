//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 24

disp("CHAPTER 7");
disp("EXAMPLE 24");

//10kVA 2500/250 V single phase transformer
//VARIABLE INITIALIZATION 
va=10000;
v1=2500;                             //primary voltage in Volts
v2=250;                              //secondary voltage in Volts
R1=4.8;                              //primary HV side winding resistance
X1=11.2;                            //primary HV side winding leakage reactance
R2=0.048;                           //secondary LV side winding resistance
X2=0.112;                           //secondary LV side winding leakage reactaance

//SOLUTION 
// 
//Primary resistance and leakage reactance referred to secondary
//R'1 & X'1
//Secondary resistance and leakage reactance referred to primary
//R'2 & X'2
//Equivalent resistance & leakage reactance referred to primary
//Re1 & Xe1
//Equivalent resistance & leakage reactance referred to secondary
//Re2 & Xe2
//
R_dash_2=R2*(v1/v2)^2;
R_e1=R1+R_dash_2;
X_dash_2=X2*(v1/v2)^2;
X_e1=X1+X_dash_2;
//
R_dash_1=R1*(v2/v1)^2;
R_e2=R2+R_dash_1;
X_dash_1=X1*(v2/v1)^2;
X_e2=X2+X_dash_1;
//leakage impedence
//The transformer leakage impedance=z0=Re2+j.Xe2
//Therefore:
z0=R_e2+X_e2*%i;
//Further Given
//the LV winding side is connected to load impedance of 5+j.3.5 Ohm
//The power factor 0.8 lagging on LV side
//applied load is
Zl=5+3.5*%i;
//total impedence in series
//The leakage impedance and load impedance are in series, therefore, total impedance is sum of the two
//
Z=z0+Zl;
magZ=sqrt(real(Z)^2+imag(Z)^2);
magZl=sqrt(real(Zl)^2+imag(Zl)^2);
//V2=I2.Zl
I2=v2/magZ;
V2=I2*magZl
disp("SOLUTION (a)");
disp(sprintf("The secondary terminal voltage is %.0f V",V2)); 
//
//part (b) and (c) of the problem cannot be solved mathematically alone.
disp(" "); 
// 
//END
