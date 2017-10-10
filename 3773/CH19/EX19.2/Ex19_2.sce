//Chapter 19: The Fourier Transform Relation between Aperture Distribution and Far-field Pattern
//Example 19-8.2
clc;

//Variable Initialization
f = 10e9    //Frequency (Hz)
c = 3e8     //Speed of light (m/s)
dia = 100   //Dish diameter (m)
aper_eff = 0.725    //Aperture efficiency (unitless)

//Calculation
wave_lt = c/f       //Wavelength (m)
hpbw = 66/(dia/wave_lt) //Half power beam width (degrees)

gain = 41000/(hpbw**2)  //Gain from beamwidth (unitless)
gain_db = 10*log10(gain)    //Gain from beamwidth (dBi)

gain_ap = 4*(%pi**2)*(dia/2)**2*(aper_eff)/(wave_lt**2)                  //Gain from effective aperture(unitless)
gain_ap_db = 10*log10(gain_ap)  //Gain from effective aperture (dBi)

side_lobe = -23     //First side lobe level from table (dB)

//Result
mprintf( "The Half Power Beamwidth is %.2f degrees", hpbw)
mprintf( "\nThe gain from beamwidth is %d dBi", gain_db)
mprintf( "\nThe gain from effective aperture is %d dBi",gain_ap_db)
mprintf( "\nThe first side-lobe level is %d dB", side_lobe)
