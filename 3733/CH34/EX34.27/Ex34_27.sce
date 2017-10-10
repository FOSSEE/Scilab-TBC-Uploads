// Example 34_27
clc;funcprot(0);
//Given data
// Annual fixed and running charges
// Diesel Rs.(300/kW + 0.5/kWh)
// Steam Rs.(1200/kW + 0.125/kWh)
E=500*10^6;//kWh
// Calculation
//(a)
// P=Maximum load in kW
// K=Load factor
// C_1=(300*P + (0.5*P*K*8760))
// C_2=(1200*P + (0.125*P*K*8760))
// Unit energy cost by Diesel=Unit energy cost by steam
function[X]=loadfactor(y)
    X(1)=((300)+(0.5*y(1)*8760))-((1200)+(0.125*y(1)*8760))
endfunction
y=[0.1];
z=fsolve(y,loadfactor)
K=z(1);

//(b)
P=(E/(8760*K));// kW
C_1=((300*P)+(0.5*P*K*8760));// Rupees
GC=C_1/E;// Generation cost in Rs./kWh
printf('\nLoad factor=%0.1f percentage \nThe generation cost=Rs.%0.3f/kWh',K*100,GC);
// The answer vary due to round off error
