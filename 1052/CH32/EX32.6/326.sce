clc;
//Example 32.6
//page no 512
printf(" Example 32.6 page no 512\n\n")
//a process emits gas of containg dust,a particulate device is employed for particle capture 
q=50000//vol. flow rate of dust,ft^3/min
c=2/7000//inlet loading of dust
DV=0.03//value of dust
//recovered value RV can be expressed in terms of pressure drop
//RV=q*c*DV*P1/(P1+15)
C_e=0.18//cost of electricity
E_f=0.55//fractional efficiency
function x=f(P1)
    
    E=P1/(P1+15)//collection efficiency
    RV=q*c*DV*E//recovered value in terms of E$/min
    C_p=q*(C_e/44200)*P1/(E_f*60)
//  x=q*c*DV*P1/(P1+15)-q*C_e*P1/E_f
    x=RV-C_p   
endfunction
P1=fsolve(100,f)
printf("\n P1=%f",P1);
//calculation mistake in book
