//variable initialization
B=0.5                                                                           //magnetic field (T)
s=1/2;
g=2;

//calculation
S=sqrt(s*(s+1));                                                                //Magnitude of spin vector
theta1=(180/%pi)*acos(0.5/S);                                                   //Orientation of spin vector (degree)
theta2=(180/%pi)*acos(-0.5/S);                                                  //Orientation of spin vector (degree)
E=2*g*B;                                                                        //Separation of the energy levels (in terms of μβ)

printf("\n θ = %.1f degree and %.1f degree\n ΔE = %.0f*μβ",theta1,theta2,E);
