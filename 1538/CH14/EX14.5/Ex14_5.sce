//example-14.5
//page no-444
//given
//content of polyster
Vm=0.45
Vf=1-Vm
//longitudinal strength and modulus are calculated using following formulas
//sigmac=nu*sigmaf*Vf+singmam*Vm
//Ec=nu*Ef*Vf+Em*Vm
//according to the table given in the ques
Ef=240  //GPa
Em=4.5  //GPa
sigmaf=1.7  //GPa
sigmam=0.0029  //GPa
Gf=1.7
Gm=1.4
nuf=0.28
num=0.32
//values of nu
nu1=1
nu2=1/2
nu3=1/4
nu4=3/8
nu5=1/6
//now longitudinal strength for differnt nu
sigmac1=nu1*(sigmaf*Vf+sigmam*Vm)    //GPa
sigmac2=nu2*(sigmaf*Vf+sigmam*Vm)    //GPa      
sigmac3=nu3*(sigmaf*Vf+sigmam*Vm)    //GPa
sigmac4=nu4*(sigmaf*Vf+sigmam*Vm)    //GPa
sigmac5=nu5*(sigmaf*Vf+sigmam*Vm)    //GPa
//liongitudina modulus for differnt nu
EC1=nu1*(Ef*Vf+Em*Vf)    //GPa
EC2=nu2*(Ef*Vf+Em*Vf)    //GPa
EC3=nu3*(Ef*Vf+Em*Vf)    //GPa
EC4=nu4*(Ef*Vf+Em*Vf)    //GPa
EC5=nu5*(Ef*Vf+Em*Vf)    //GPa
printf ("longitudinal strength and longitudinal modulus for nu=1     is %f GPa     and     %f GPa\n longitudinal strength and longitudinal modulus for nu=1/2    is %f GPa     and     %f GPa\n longitudinal strength and longitudinal modulus for nu=1/4     is %f GPa    and     %f GPa\n longitudinal strength and longitudinal modulus for nu=3/8      is %f GPa      and     %f GPa\n longitudinal strength and longitudinal modulus for nu=1/6      is %f GPa    and      %f     GPa\n",sigmac1,EC1,sigmac2,EC2,sigmac3,EC3,sigmac4,EC4,sigmac5,EC5)
