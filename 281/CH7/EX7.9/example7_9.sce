disp('chapter 7 ex7.9')
disp('given')
disp('design the circuit using LF353 BIFET op-amps and a 2N4391 FET')
disp('sample and hold circuit has a signal amplitude of 1volt')
Vi=1
disp('holding time th=500*10^(-6)s')
th=500*10^(-6)
disp('for the LF 353 op-amp,IBmax=50pA')
IBmax=50*10^(-12)
disp('for the 2N4391 FET,the gate-source reverse current IGS=200nA')
IGS=200*10^(-9)
disp('the channel resistance when on Rd(on)=30ohm')
Rd=30
disp('let R1=R2=1Mohm')
disp('capacitor discharge current Id=IGS=200nA')
Id=200*10^(-9)
disp('for a 0.2% total error,allow 0.1% due to capacitor discharge and a 0.1% charging error for 0.1% error due to discharge during the holding time')
disp('let v=0.1% of Vi')
v=.1*Vi/100
disp('volts',v)
disp('C1=Id*th/v')
C1=Id*th/v
disp('farads',C1)   //standard value
disp('for the 2N4391,VGS(off)=10volt maximum')
disp('V1(-)=-10volt and V1(+)=Vo=+1volt')
disp('for 0.1% error due to acquisition time timin=7*C1*Rd')
timin=7*C1*Rd
disp('seconds',timin)