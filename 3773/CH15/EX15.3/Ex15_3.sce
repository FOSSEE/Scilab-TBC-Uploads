//Chapter 15: Antennas for Special Applications
//Example 15-12.1
clc;

//Variable Initialization
f = 60e6    //Frequency(Hz)
dep = 20    //Depth of antenna location (m)
sigma = 1.33e-2    //Conductivity (mho per m)
eps0 = 8.85e-12    //Air Permittivity (F/m)
epr1 = 80    //Real part of relative permittivity (unitless)
alphat = 10    //Elevation angle (degrees)
cl = 1    //Circumference (lambda)
%pitch = 12.5    //%pitch angle (degrees)
c = 3e8    //Speed of light (m/s)

dir_gb = 3    //Directivity of George Brown turnstile (unitless)
Aer_gb = 6    //Effective aperture of George Brown turnstile (unitless)
r = 1e3    //Distance between transmitter and receiver (m)
Pt = 100    //Transmitted power (W)

//Calculations
epr11 = sigma/(eps0*2*%pi*f)    //Loss term of relative permittivity (unitless)
epr = epr1 + %i*epr11    //Relative permittivity (unitless)
alphac = acos(sqrt(1/epr1))    //Critical angle (degrees)
alpha = acos(cos((alphat)*%pi/180)/sqrt(epr1))    //Angle of incidence (degrees)

n1=12    //Number of turns
rad = cl/(2*%pi)    //Radius of loop (lambda)
sl = tan((12.5)*%pi/180)
hpbw1 = 52/(cl*sqrt(n1*sl))    //Half power beamwidth for 12 turns(degrees)
dir1 = 12*(cl**2)*n1*sl    //Directivity for 12 turns (unitless)
n2 = n1*2    //Number of turns
hpbw2 = 52/(cl*sqrt(n2*sl))    //Half power beamwidth for 24 turns(degrees)
dir2 = 12*(cl**2)*n2*sl    //Directivity for 24 turns (unitless)
num = 20    //Number of turns chosen

p_perpt=[]
p_pallt=[]
for i=0:%pi/180:%pi
p_perp = [(sin(i)-sqrt(epr - cos(i)**2))/(sin(i)+sqrt(epr - cos(i)**2))]
p_pall = [(epr*sin(i)-sqrt(epr - cos(i)**2))/(epr*sin(i)+sqrt(epr - cos(i)**2))]
p_perpt($+1)=p_perp
p_pallt($+1)=p_pall
end

Sr = 0.5*((p_perpt)**2 + (p_pallt)**2)    //Relative power density reflected (unitless)
St = 1 - Sr     //Relative power density transmitted (unitless)

theta = 0:%pi/180:%pi

subplot(1,2,1)
plot(theta,St)
title("Relative Power Vs Elevation Angle")

subplot(1,2,2)
polarplot(theta,real(St))
title("Pattern of Transmission")

wave_lt = c/f    //Wavelength (m)
diam = wave_lt/(sqrt(epr1)*%pi)    //Submerged helix diameter (m)
att_cons = (%pi*epr11)/(wave_lt*sqrt(epr1))    //Attenuation constant for water (Np/m)
att_d = 20*log10(exp(-att_cons*dep))    //Attenuation in the water path (dB)
Dir = 12*(cl**2)*num*sl    //Directivity for 20 turn helix (unitless)
Ae = Dir*(wave_lt**2)/(4*%pi)    //Effective aperture (m^2)

Pr = Pt*Ae*dir_gb/((r**2)*(wave_lt**2))    //Received power(W)

loss_inter = 10*log10(St(10))    //Loss at the interface for alpha = 83.68 (dB)
tot_loss = abs(att_d + loss_inter)    //Total loss (dB)
Pr_act = Pr/(10**(ceil(tot_loss)/10))    //Net Actual received power (W)


//Results
mprintf("Half power beamwidth for 12 turns is %.0f degrees",hpbw1)
mprintf("\nDirectivity for 12 turns is %.1f", dir1)
mprintf("\nHalf power beamwidth for 24 turns is %.0f degrees",hpbw2)
mprintf("\nDirectivity for 24 turns is %.1f", dir2)
mprintf("\nA helix of %d turns is chosen for reasonable compromise",num)
mprintf("\nThe signal level at the distance of 1km is %.2e W",Pr_act)
