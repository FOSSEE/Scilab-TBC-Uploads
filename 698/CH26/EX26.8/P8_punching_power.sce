clc
//Example 26.8
//Punching power

//------------------------------------------------------------------------------

//Given data
Sut=300* 10^6
d=0.025
l=0.02
rho=7250
St=6* 10^6
Dm=1.25
w=(9*2*%pi*25)/60
V=w* Dm/2
delta=0.1


res8=mopen(TMPDIR+'8_punching_power.txt','wt')
mfprintf(res8,'(a)For punching operation, requirement of power:\n')
Smax=Sut*%pi*d*l
mfprintf(res8,'Maximum shear force=Sut*Area =%0.1f N\n',Smax)
Estroke=(1/2)*Smax*l
mfprintf(res8,'Energy required per stroke=%0.3f Nm\n',Estroke)
Etot=Estroke*25
mfprintf(res8,'Total energy required per minute=%0.2f Nm\n',Etot)
P=Etot/(60*0.9)
mfprintf(res8,'Power of Motor=%0.2f W\n\n',P)

mfprintf(res8,'(b)Energy stored in flywheel:\n')
E=0.9*Estroke
mfprintf(res8,'\t=%0.2f Nm\n',E)
mfprintf(res8,'Out of this,5%% is supplied by arms and hub, and 95%% by rim\n')
K=0.95
mr=(K*E)/(V^2 *delta)
mfprintf(res8,'\tmr=%0.3f kg\n\n',mr)

mfprintf(res8,'(c)mr=pi*Dm*t*b*rho\n')
t=sqrt(mr/(%pi*Dm*rho*2))
mfprintf(res8,'For rectangular rim, b=2t=%0.3f m and t=%0.3f m\n',2*t,t)
mfprintf(res8,'Checking for stresses,\nSt=rho*V^2=1.57Mpa, which is less than 6Mpa, hence safe.')


mclose(res8)
editor(TMPDIR+'8_punching_power.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------
