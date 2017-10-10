// Problem 5.12,Page no.133

clc;clear;
close;

b=200 //mm //width of beam
d=300 //mm //depth of beam
t=12 //mm //thickness of beam
E_s=220 //KN/m**2 //modulus of elasticity of steel
E_w=11 //KN/m**2 //modulus of elasticity of timber
sigma_s=115 //MN/m**2 //stress of steel
sigma_w=9.2 //MN/m**2 //stress of timber
L=2 //m //Span of beam

//Calculations

//E_w*E_s**-1=1*20**-1 //ratio of Modulus of elasticity of timber to steel


//(Part-1)
b_1=b*20**-1 //mm //web thickness of transformed section
stress=20*sigma_w //MN/m**2 //Allowable stress in web of equivalen beam
//But allowable stress in flanges is sigma_s is 115 KN/m**2 and therefore taken into consideration


d_1=324 //mm //depth of beam with thickness in consideration
I=1*12**-1*0.2*0.324**3-2*1*12**-1*0.095*0.3**3 //m**4 //M.I of transformed section

//Using Relation, M*I**-1=sigma*y**-1 we get

//Part-2
M_max=I*(324*10**-3*2**-1)**-1*sigma_s*10**6 //N*m //Max allowable Bending moment for steel section

//Part-3
//As beam is simply supported at the ends and the load is applied at the centre of beam
//M_max=W*L*4**-1 //Max Bending moment 
W=M_max*4*L**-1 //N //Allowable stress Load

//Result
printf("Web thickness of Equivalent steel section is %.2f mm",b_1)
printf("\n Max Allowable bending moment for section is %.2f N-m",M_max)
printf("\n Allowable safe Load is %.2f N",W)
