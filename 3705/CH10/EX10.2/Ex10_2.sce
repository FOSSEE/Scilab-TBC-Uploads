
clear//

//Variable Declaration
E=200*10**9 //Youngs Modulus in Pa
sigma_yp=380*10**6 //Stress allowable in Pa
Le=10 //Length in m
end_cond=0.5 //Support condition factor to be ,ultiplied to length
A=15.5*10**-3 //Area in m^2

//Calculations
Cc=sqrt((2*%pi**2*E)*sigma_yp**-1) //Slenderness Ratio

//Part 1
S_R1=142.9 //Slenderness ratio 
sigma_w=(12*%pi**2*E)/(23*S_R1**2) //Allowable Working Stress in Pa
P=sigma_w*A //Maximum Allowable Load in kN

//Part 2
S_R2=79.37 //Slenderness ratio 
N=5*3**-1+((3*S_R2)/(8*Cc))-(S_R2**3*(8*Cc**3)**-1) //Factor Of Safety

sigma_w2=(1-(S_R2**2*0.5*Cc**-2))*(sigma_yp*N**-1) //Allowable working Stress in Pa
P2=sigma_w2*A //Allowable Load in kN

//Part 3
S_R3=55.56 //Slenderness Ratio
N3=5*3**-1+((3*S_R3)/(8*Cc))-(S_R3**3*(8*Cc**3)**-1) //Factor Of Safety

sigma_w3=(1-(S_R3**2*0.5*Cc**-2))*(sigma_yp*N3**-1) //Allowable working Stress in Pa
P3=sigma_w3*A //Allowable Load in kN

//Result
printf("\n The results for Part 1 are")
printf("\n Maximum Allowable Load P= %0.0f kN",P*10**-3)
printf("\n Part 2")
printf("\n Maximum Allowable Load P= %0.0f kN",P2*10**-3)
printf("\n Part 3")
printf("\n Maximum Allowable Load P= %0.0f kN",P3*10**-3)
