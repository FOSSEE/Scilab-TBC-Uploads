clc
//Example 7.12
//Spring stiffness
//------------------------------------------------------------------------------

//Given data
//mass of machine
m1=100 // kg
//mass of reciprocating parts
m2=2.25 //kg
//speed
N=900 //rpm
w=(2*%pi*N)/60 //rad/s
//displacement
x=0.1 //m
//Transmissibility ratio
TR=1/20

res12=mopen(TMPDIR+'12_spring_stiffness.txt','wt')

//In absence of damping
mfprintf(res12,'In absence of damping,\n\tTR=1/(1- r^2)\n\twhere r=w/wn\n')
//Natural frequency
r=sqrt(abs(-1- 1/TR))
wn=w/r
mfprintf(res12,'Natural frequency wn=%0.2f rad/s\n\n',wn)

//Combined stiffness
Ke=wn^2 *m1
mfprintf(res12,'(a) Combined stiffness=%0.2f N/mm\n\n',Ke* 10^-3)

//Damping factor
mfprintf(res12,'(b) In actual conditions, successive vibrations are reduced by 30%%\n')
mfprintf(res12,'Logarithmic decrement delta=ln(X/Xn+1)\n')
mfprintf(res12,'\tX/Xn+1 = 1/1-0.3\n')
delta=log(1/(1-0.3))
mfprintf(res12,'\tdelta= ln(X/Xn+1)= (2*pi*zeta)/sqrt(1-zeta^2),\n\twhere zeta=damping factor\n')
zeta=delta/(sqrt(delta^2 + (2*%pi)^2))
mfprintf(res12,'zeta=%0.5f\n\n',zeta)

//Transmissibility ratio with damping
mfprintf(res12,'Transmissibility ratio is given by\n\t')
mfprintf(res12,'TR=sqrt(1 + (2*zeta*r)^2)/sqrt((1- r^2)^2 + (2*zeta*r)^2)\n')
TR_new=sqrt(1 + (2*zeta*r)^2 )/sqrt( (1- r^2)^2 + (2*zeta*r)^2 )
mfprintf(res12,'TR=%0.5f\n\n',TR_new)

//Maximum unbalance force
Fo=m2*TR*(w^2)
//Force transmitted
Ftr=Fo*TR_new
mfprintf(res12,'The Maximum unbalance force is Fo=%0.2f N\n',Fo)
mfprintf(res12,'Force transmitted is Ftr=Fo*TR =%0.2f N\n\n',Ftr)

//At resonance
mfprintf(res12,'(c) At resonance, r=1\n\t')
mfprintf(res12,'TR=sqrt(1 + (2*zeta)^2)/(2*zeta)\n')
TR_res=sqrt(1 + (2*zeta)^2)/(2*zeta)
mfprintf(res12,'TR=%0.3f\n\n',TR_res)
Fo_res=m2*TR*(wn^2)
Ftr_res=Fo_res*TR_res
mfprintf(res12,'Maximum unbalanced force due to resonance Fo=%0.2f N\n',Fo_res)
mfprintf(res12,'Force transmitted at resonance Ftr=%0.2f N\n\n',Ftr_res)

//Amplitude
X=Ftr_res/Ke
mfprintf(res12,'(d)Amplitude at resonance X=Ftr/Ke =%0.3f mm',X* 10^3)

mclose(res12)
editor(TMPDIR+'12_spring_stiffness.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------
