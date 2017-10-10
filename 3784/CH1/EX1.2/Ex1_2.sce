clc
// variable Initialization
Vm=208 //Supply Voltage In Volts
af=0 //Firing Angle Of Converters In Field
Rf=147 //Field Resistance In Ohm
Ra=0.25 //Armature Resistance In Ohm
T=45 //Load Torque In N-m
Kv=0.7032 //Motor Voltage Constant
N=1000 //Motor Speed In Rpm 

//Solution
Vf=Vm*(1+cos(af))*(1/%pi)*1.414 //Voltage Across Field In Volts
If=Vf/Rf //Field Current In Amp
Ia=T/(Kv*If) //Armature Current In Amp
w=(2*%pi*N)/60 //Angular Speed In Rad/Sec
Eb=Kv*If*w //Back Emf In Volts
Va=Eb+Ia*Ra //Voltage Across Armature In Volts
A=%pi*Va*(1/Vm)*(1/1.414)
aa=acosd(A-1) //Delay Angle Of Semi Converter In Armature Circuit
VaIa=Va*Ia //Power Output Of Converters In Armature Circuit In Watts
I=sqrt((180-aa)*(1/180))*Ia //Input Current
VA=Vm*I //Input VA
Pf=VaIa/VA //Input Power Factor

//Result
printf('\n\n The Field Current=%0.1f Amp\n\n',If)
printf('\n\n The Delay Angle Of Semi Converter In Armature Circuit=%0.1f degree\n\n',aa)
printf('\n\n The Power Factor Of Semi Converter In Armature Circuit=%0.1f\n\n',Pf)
//The answers vary due to round off error(2nd and 3rd)
