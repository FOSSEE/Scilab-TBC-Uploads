//variable initialization
mu=1.62*10^-27;                                                                 //Reduced mass of HCL (kg)
c=3*10^8;                                                                       //Velocity of light (m/s)
h=6.62*10^-34;                                                                  //Plank's constant (joule second)
v1_P=2906.3                                                                     //Wave no. of P branch (cm-1)
v2_P=2927.5                                                                     //Wave no. of P branch (cm-1)
v3_P=2948.7                                                                     //Wave no. of P branch (cm-1)
v4_P=2969.9                                                                     //Wave no. of P branch (cm-1)
v1_R=3012.2                                                                     //Wave no. of R branch (cm-1)
v2_R=3033.4                                                                     //Wave no. of R branch (cm-1)
v3_R=3054.6                                                                     //Wave no. of R branch (cm-1)
v4_R=3078.8                                                                     //Wave no. of R branch (cm-1)

//(i) Equilibrium internuclear distance
delta_v=v2_P-v1_P;                                                              //Separation of successive line of P and R branch (cm-1)
B=delta_v/2;                                                                    //rotational constant (cm-1)
I=h/(8*%pi^2*B*10^2*c);                                                         //Moment of inertia (kg m^2)
r=sqrt(I/mu)*10^10;                                                             //Equilibrium internuclear distance (Å)

//(ii) Force constant
v0=(v4_P+v1_R)/2;                                                               //Equlibrium frequency (cm-1)
k=4*%pi^2*mu*c^2*v0^2*10^4;                                                     //Force constant of HCl (N/m)

printf("\n(i) Equilibrium internuclear distance = %.2f Å\n(ii) Force constant = %.0f N/m",r,k);

//Note: the answer of (ii) part is wrong in the book
