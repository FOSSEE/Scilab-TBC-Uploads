// Chapter 9_The bipolar transistor
//Caption_Gain factors
//Ex_4//page 373
DE=10
DB=25
XB=0.70*10^-4   //width of base
XE=0.50*10^-4    //width of emitter
NE=10^18   //doping concentration in emitter
NB=10^16   //doping concentration in base
VBE=0.65
e=1.6*10^-19
tau_eo=10^-7   //minority carrier lifetime in emitter
tau_bo=5*10^-7   //minority carrier lifetime in base
Jro=5*10^-8
T=300
peo=(1.5*10^10)^2/NE
nbo=(1.5*10^10)^2/NB
Le=(DE*tau_eo)^0.5
Lb=(DB*tau_bo)^0.5
gamma_i=1/(1+((peo*DE*Lb*tanh(0.0198))/(nbo*DB*Le*tanh(0.050))))
alpha_T=1/(cosh(XB/Lb))
Jso=e*DB*nbo/(Lb*tanh(XB/Lb))
delta=1/1+(Jro*exp(-VBE/(2*0.0259)/Jso))
delta=0.99986
alpha=gamma_i*alpha_T*delta
beta_i=alpha/(1-alpha)
printf('Common emitter current gain is %1.0f',beta_i)