clc
// Va r i a b l e I n i t i a l i z a t i o n
Vm=230 //Supply Voltage in Volts
af=0 // Firing Angle of Converters in Field
Rf=200 //Field Resistance in ohm
T=50 //Load Torque in N-m
Kt=0.8 //Torque Constant in N-m/A^2
N=900 //Motor Speed in rpm
Ra=0.3 // Armature Resistance in ohm

//Solution
Vf=Vm*(1+cos(af))*(1/%pi)*1.414  //Voltage across Field in Volts
If=Vf/Rf //Field Current in Amp
Ia=T/(Kt*If) //Armature Current in Amp
w=(2*%pi*N)/60 //Angular Speed in rad/sec
Eb=Kt*If*w //Back Emf in Volts
Va=Eb+Ia*Ra // Voltage across Armature
A=%pi*Va*(1/Vm)*(1/1.414)
aa=acosd(A-1) //Firing Angle of Semi Converter in Armature Circuit
VaIa=Va*Ia //Power output of Converters in Armature Circuit in Watts
I=sqrt((180-aa)*(1/180))*Ia //Input Current
VA=Vm*I //Input VA
pf=VaIa/VA //Input Power Factor
//Result
printf('\n\n The Field Current=%0.1f Amp\n\n',If)
printf('\n\n The Firing Angle of Semi Converter in Armature Circuit=%0.1f degree\n\n',aa)
printf('\n\n The Power Factor of Semi Converter in Armature Circuit=%0.1f\n\n',pf)
