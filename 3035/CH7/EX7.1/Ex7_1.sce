//find..
    clc
    //solution
    //given
    Tb=3*10^6//N-mm
    d=1//m
    r=500//mm
    u=0.3
    q=0.61//rad
    ub=(4*u*sin(q))/(2*q+sin(2*q))//eqivalent coffint of friction
    //ref fig 25.12
    //let S be spring force
    //taking moment abt fulcrum O1
    //S*1250=Rn1*600 + Ft1*(500-250)
    //put Rn1=Ft1/ub...
    //S*1250=2125*Ft1
    //Ft1=S*1250/2125
    //taking moment abt O2
    //S*1250+Ft2(500-250)=Rn2*600
    //Rn2=Ft2/ub
    //S*1250+Ft2(500-250)=1625Ft2
    //Ft2=S*1250/1625
    //Tb=(Ft1+Ft2)*r=680*S
    S=Tb/680
    printf("spring force is,%f N\n",S)
    //let b be width of brakes shoes
    //Ab=b*(2*r*sin(q))//mm
    Ft1=S*1250/2125
    Rn1=Ft1/ub
    Ft2=S*1250/1625
    Rn2=Ft2/ub// Variable Declaration
V = 400.0       //Voltage supplied(V)
f = 50.0        //Frequency(Hz)
P_1 = 75.0      //Power of induction motor at middle of distributor(kVA)
pf_1 = 0.8      //Power factor of induction motor at middle of distributor
P_2 = 50.0      //Power of induction motor at far end(kVA)
pf_2 = 0.85     //Power factor of induction motor at far end
demand_f = 1.0  //Demand factor
diver_f = 1.2   //Diversity factor
L = 150.0       //Length of line(m)

// Calculation Section
theta_1 = acos(pf_1)                                       //Power factor angle for 75 kVA(radians)
theta_2 = acos(pf_2)                                       //Power factor angle for 50 kVA(radians)
load = P_1*exp(%i*theta_1)+P_2*exp(%i*theta_2)      //Total connected load(kVA)
pf_r = cos(phasemag(load)*%pi/180)                              //Resultant power factor
I_max = abs(load)*1000/(3**0.5*V*diver_f)                       //Maximum distributor current per phase(A)
L_1 = L/2
V_per = 0.06*V/3**0.5                                           //Permissible voltage drop(V)

R_f = 0.734*10**-3                                              //Resistance(ohm/m)
X_f = 0.336*10**-3                                              //Reactance(ohm/m)
I_2f = P_2*10**3/(3**0.5*V)
I_1f = P_1*10**3/(3**0.5*V)
V_f = I_1f*L_1*(R_f*pf_1+X_f*sin(theta_1))+I_2f*L*(R_f*pf_2+X_f*sin(theta_2))
d_f = 9.0                                                       //Overall conductor diameter(mm)
area_f = %pi*d_f**2/4                                       //Area of ferret conductor(mm^2)

R_R = 0.587*10**-3                                              //Resistance(ohm/m)
X_R = 0.333*10**-3                                              //Reactance(ohm/m)
I_2R = P_2*10**3/(3**0.5*V)
I_1R = P_1*10**3/(3**0.5*V)
V_R = I_1R*L_1*(R_R*pf_1+X_R*sin(theta_1))+I_2R*L*(R_R*pf_2+X_R*sin(theta_2))
d_R = 10.0                                                      //Overall conductor diameter(mm)
area_R = %pi*d_R**2/4                                       //Area of rabbit conductor(mm^2)


// Result Section
if(V_f > V_per) then
    printf('Overall cross-sectional area of the 7/3.35 mm Rabbit ACSR conductors having overall conductor diameter of 10.0 mm = %.2f mm^2' ,area_R)
else
    printf('Overall cross-sectional area of the 7/3.00 mm Ferret ACSR conductors having overall conductor diameter of 9.0 mm = %.2f mm^2' ,area_f)
end

printf("END")
//End error, but doesn't affect functioning of code