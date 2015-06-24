//Chapter-2,Example2_21_5,pg 2-48

Eg=1.2                                  //energy gap

T1=600                                  //temperature

T2=300                                  //temperature

//since ue>>uh for intrinsic semiconductor

//s=ni*e*ue

K=8.62*10^-5                            //Boltzman constant

s=%s

s1=s*exp((-Eg)/(2*K*T1))

s2=s*exp((-Eg)/(2*K*T2))

m=(s1/s2)

printf('Ratio between conductivity =')

disp(m)
