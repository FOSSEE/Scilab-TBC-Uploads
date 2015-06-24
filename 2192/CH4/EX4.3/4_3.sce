clc,clear
printf('Example 4.3\n\n')

P=30*10^3/3 //power per phase
V_ph=400/sqrt(3) //phase voltage
R=(V_ph)^2/P

//l and w are length and width respectively
rho= 101.6*10^-8 //resistivity
t=0.254*10^-3 //thickness of nickel-chrome strip
l_by_w = R*t/rho //ratio of l and w                                           (i)

k=0.5;e=0.9; //radiating efficiency and emissivity
T1=1100+273; T2=700+273; //temperatures of wire and charge
H=5.72*k*e*(T1^4-T2^4)/100^4 //heat dissipated from surface

//surface are for heat dissipation = 2*w*l
//heat dissipated = power input
wl= P/(2*H) //                                                                (ii)
//dividing expression (ii) by expression (i)
w= sqrt(wl/l_by_w)
printf('Width of strip = %.1f mm',w*1000)
