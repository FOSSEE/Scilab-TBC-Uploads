//example-14.4
//page no-442
//given
Vf=.65
Vm=1-Vf
//part(a)
//longitudinal strength is determined by
//sigmac=sigmaf*Vf+sigmam*Vm
//here according to table given in question we have
sigmaf=2.8
sigmam=0.0025
sigmac=sigmaf*Vf+sigmam*Vm  //GPa
//part(b)
//longitudinal modulus is given by
//Ec=Ef*Vf+Em*Vm
//here according to table
Ef=130
Em=3.5
Ec=(Ef*Vf+Em*Vm)  //GPa
//part(c)
//transverse modulus is given by
//1/EC=Vf/Ef+Vm/Em
EC=(Vf/Ef+Vm/Em)^-1  //GPa
//part(d)
//poisson ratio
//nuLT=nuf*Vf+num*Vm
//here according to the table
nuf=0.34
num=0.36
nuLT=nuf*Vf+num*Vm  
//part(e)
//shear modulus
//1/Glt=Vf/Gf+Vm/Gm
// here according to the table 
Gf=2.2
Gm=1.2
GLT=(Vf/Gf+Vm/Gm)^-1  //GPa
printf ("the longitudinal strength is %f GPa\n, the logitudinal modulus is %f GPa\n , the transvrse modulus is %f GPa\n , the  poissons ratio is %f\n and sher modulus is %f GPa",sigmac,Ec,EC,nuLT,GLT)
