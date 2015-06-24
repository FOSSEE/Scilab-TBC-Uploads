//variable initialization
l=1
s=1/2
j1=1/2
j2=3/2

//calculation
L=sqrt(l*(l+1));                                                                //orbital angular momenta
S=sqrt(s*(s+1));                                                                //spin angular momenta
J1=sqrt(j1*(j1+1));                                                             //total angular momenta
J2=sqrt(j2*(j2+1));                                                             //total angular momenta
theta1=(180/%pi)*acos(((j1*(j1+1))-(l*(l+1))-(s*(s+1)))/(2*sqrt(l*(l+1))*sqrt(s*(s+1))));    //angle b/w l and s (degree)
theta2=(180/%pi)*acos(((j2*(j2+1))-(l*(l+1))-(s*(s+1)))/(2*sqrt(l*(l+1))*sqrt(s*(s+1))));    //angle b/w l and s (degree)

printf("\n L = %f*h\n S = %f*h\n J = %f*h, %f*h\n θ1 = %.0f degree\n θ2 = %.0f degree",L,S,J1,J2,theta1,theta2);
