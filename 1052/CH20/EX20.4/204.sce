clc;
//Example 20.4
//Page no 271
printf("Example 20.4 page no 271\n\n");
//vinyl chloride application
//calculation of density by using ideal gas law
Mw=78//molecular weight of vinyl chloride
R=82.06//gas constant,cm^3.atm/mol.K 
T=298//temperature,K 
P=1//pressure ,atm
rho=P*Mw/(R*T)//density of vinyl chloride
printf("\n rho density of vinyl chloride=%f g/cm^3",rho);
//given
m_dot=10//mass flow rate,g/min
q=m_dot/rho//volumatric flow rate
printf("\n vol. flow rate q=%f cm^3/min",q);
q_acfm=0.1107//vol flow rate in acfm
//cal. the air flow rate in acfm q_air required to meet the 1.0 ppm constraint with the equation 
q_air=q_acfm/1e-6
printf("\n vol.flow rate q_air=%f acfm",q_air);
S_factor=10//correct for mixing by employing a saftey factor
//apply saftey factor to calculate the actual air flow rate for dilution ventilation 
q_dil=S_factor*q_air
printf("\n air flow rate for dilution q_dil=%f acfm",q_dil);
//now consider the local exhaust ventilation by first calculating the face area
H=30//height of hood,in
W=25//width of hood,in
S=H*W/144//surface area of hood ,ft^2
//the air flow rate in acfm q_air,exh required for a face velocity of 100 ft/min is then
v=100//face velocity,ft/min
q_exh=round(S*v)
printf("\n air flow rate q_exh=%f acfm",q_exh); 

