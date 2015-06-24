clc
clear 
printf("example 6.17 page number 264\n\n")

//to find the air flow rate and outlet humidity
S=425.6   //in kg/h
X1 = 0.035   //in kgwater/kg dry solid
t_s1=25   //in degree C
X2 = 0.017   //in kg H2O/kg dry air
t_s2=60   //in degree C
H2 = 0.0175    //in kg H2O/kg dry air
t_G2 = 84.2   //in degree C
t_G1= 32.8   //in degree C
C_pS = 1.465   //in kJ/kg dry solid
C_pA = 4.187   //in kg/ kg H2O K

H_G2=(1.005+1.88*H2)*(t_G2-0)+H2*2501;
H_S1 = C_pS*(t_s1-0)+X1*C_pA*(t_s1-0);    //in kJ/kg
H_S2 = C_pS*(t_s2-0)+X2*C_pA*(t_s2-0);   //in kJ/kg
Q=9300;  //in kJ/h

printf("Latent heat of water at 0C, HG2 = %f kJ/kg dryair",H_G2)
printf("\n\nEnthalpy of entering solid, HS1 = %f kJ/kg dryair",H_S1)
printf("\n\nEnthalpy of exit solid, HS2 = %f kJ/kg dryair",H_S2)

//applying GHg2 + SHs1 = GHg1 +SHs2 +Q, we get two linear equations
//0.0175G+14.17248 = GH1 and 98.194G-29745.398 = 2562.664GH1
A = [0.0175 -1;98.194 -2562.664];
b = [-14.17248;29745.398];
x = A\b;
G = x(1);
H1 = x(2)/G;
printf("\n\nAir flow rate, G = %f kg dryair/hr",G)
printf("\n\nHumidity, H1 = %f kg dryair/hr",H1)
