clear
//
//

//Initilization of Variables

D_s=30 //mm //Diameter of steel rod
d=30 //mm //Internal Diameter of copper tube
D=40//mm //External Diameter of copper tube
E_s=2*10**5 //N/mm**2 //Youngs Modulus of Steel rod
E_c=1*10**5//N/mm**2 //Youngs Modulus of copper tube
P=100 //N //Load
h=40 //mm //height from which Load falls
L=800 //mm //Length 

//Calculations

//Area of steel rod
A_s=%pi*4**-1*D_s**2

//Area of copper tube
A_c=%pi*4**-1*(D**2-d**2)

//But Dell_s=dell_c=dell
//p_s*E_s**-1*L=p_c*L*E_c
//After simplifying furthe we get
//p_s=2*p_c

//Now Equating internal Energy to Workdone we get
p_c=(2*P*h*L**-1*(4*A_s*E_s**-1+A_c*E_c**-1))**0.5
p_s=2*p_c

//Result
printf("\n STress produced in steel is %0.2f  N/mm**2",p_s)
printf("\n STress produced in copper is %0.2f  N/mm**2",p_c)
