//example-12.2
//page no-382
//given
//degree of polymerization of teflon
DOP=100000
//chemical formula of teflon is C2F4
//molecular weight of monomer teflon
Mm=2*12+4*19
//molecular weight of teflon polymer
Mp=DOP*Mm
//molecular weight of polythene monomer i.ee C2H4
MmP=2*12+4*1
//molecular weight of polythene polymer
MpP=DOP*MmP
printf ("molecular weight of PTFE anf Polythene are %d and %d",Mm,MpP)
//ratio of molecular weight of PTFE and Polythene
R=Mp/MpP
printf ("the ration of molecular weight of PTFE and Polythene having same DOP is %f",R)
