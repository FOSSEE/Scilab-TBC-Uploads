clc
// At 1 MPa
tsat = 179.91 // Saturation temperature in degree Celsius
vf = 0.001127 // Specific volume of fluid in m^3/kg
vg = 0.19444 // Specific volume of gas in m^3/kg 
sf = 2.1387 // Specific entropy of fluid in kJ/kgK
sg = 6.5865// Specific entropy of gas in kJ/kgK
printf("\n Example 9.1")
vfg = vg-vf // Change in specific volume due to evaporation
sfg = sg-sf// Change in specific entropy due to evaporation
hfg = 2015.3
printf("\n At 1 MPa, \n saturation temperature is %f degree celcius",tsat)
printf("\n Changes in specific volume is %f m^3/kg",vfg)
printf("\n Change in entropy during evaporation is %f kJ/kg K",sfg)
printf("\n The latent heat of vaporization is %f kJ/kg",hfg)
// Data is given in the table A.1(b) in Appendix in the book

