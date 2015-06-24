// Chapter 11_ Metal-Oxide-Semiconductor Field Effect Transistor:Additional Concepts
//Caption_Narrow channel effects
//Ex_3//page 520
Na=3*10^16
tox=450*10^-8    //oxide thickness
fi=%pi/2     //fitting parameter
delVt=0.2
Cox=7.67*10^-8    //oxide capacitance
xdt=0.18*10^-4    
W=10^4*e*Na*(fi*xdt^2)/(Cox*delVt)
printf('The channel width that will limit the threshold voltage is %1.2f micrometer',W)