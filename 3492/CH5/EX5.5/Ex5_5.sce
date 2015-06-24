clc
//Chapter5
//Ex_5
//Given
Na=2*10^17 //acceptor atoms /cm3
Nd=10^16 //acceptor atoms /cm3
ni=1.45*10^10 //in cm^-3
K=0.0259 //  in eV
//since Nd>>ni
n=Nd
//let EFn-EFi=E
E=K*log(Nd/ni)
disp(E,"Position of the fermi energy w.r.t fermi energy in intrinsic Si in eV is")
//for intrinsic Si
//ni=Nc*exp(-(Ec-E_Fi)/(k*T))
//for doped Si
//Nd=Nc*exp(-(Ec-E_Fn)/(k*T))
//let x=Nd/ni
//let K=k*T
p=Na-Nd
//let E=EFp-EFi
//let n=p/ni
E=-K*log(p/ni)
disp(E,"Position of the fermi energy w.r.t fermi energy in n-type case in eV is")
