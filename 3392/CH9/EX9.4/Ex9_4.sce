clc
// initialization of variables
clear
// part (b)
// Following is the formula used in evaluating the circumferential stress
// Nr=(ro+ri)*(ro-ri-r*log(ro/ri))
// Dr=r*((ro+ri)*log(ro/ri)-2*(ro-ri))
// S_th=P*((sin(th)-th*cos(th))/(%pi*(r0-ri)*t))*(1+Nr/Dr)
ri=60 //mm
ro=180 //mm
t=50 //mm
th=%pi/2
// For, maximum tensile stress r=ri
r=ri
Nr=(ro+ri)*(ro-ri-r*log(ro/ri))
Dr=r*((ro+ri)*log(ro/ri)-2*(ro-ri))
// Question was asked in terms of P, so let it be unity
P=1
S_th=P*((sin(th)-th*cos(th))/(%pi*(ro-ri)*t))*(1+Nr/Dr)
S_max1=S_th
// For maximum compressive stress r=ro
r=ro
Nr=(ro+ri)*(ro-ri-r*log(ro/ri))
Dr=r*((ro+ri)*log(ro/ri)-2*(ro-ri))
S_th=P*((sin(th)-th*cos(th))/(%pi*(ro-ri)*t))*(1+Nr/Dr)
S_max2=S_th
printf('part (b)')
printf('\n for theta=90 degrees')
printf('\n Maximum tensile stress = %.6f P',S_max1)
printf('\n Maximum compressive stress = %.6f P',S_max2)


th=%pi
// For, maximum tensile stress r=ri
r=ri
Nr=(ro+ri)*(ro-ri-r*log(ro/ri))
Dr=r*((ro+ri)*log(ro/ri)-2*(ro-ri))
// Question was asked in terms of P, so let it be unity
P=1
S_th=P*((sin(th)-th*cos(th))/(%pi*(ro-ri)*t))*(1+Nr/Dr)
S_max1=S_th
// For maximum compressive stress r=ro
r=ro
Nr=(ro+ri)*(ro-ri-r*log(ro/ri))
Dr=r*((ro+ri)*log(ro/ri)-2*(ro-ri))
S_th=P*((sin(th)-th*cos(th))/(%pi*(ro-ri)*t))*(1+Nr/Dr)
S_max2=S_th
printf('\n for theta=180 degrees')
printf('\n Maximum tensile stress = %.6f P',S_max1)
printf('\n Maximum compressive stress = %.6f P',S_max2)

//part(c)
S_thMax=340 //MPa
SF=2.2
P=S_thMax/(SF*S_max1)
printf('\n part(c)')
printf('\n The maximum allowable load is %.2f kN',P/1000)
