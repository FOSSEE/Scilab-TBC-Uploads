clear ;
clc;
// Example 24.5
printf('Example 24.5\n\n');
//page no. 732
// Solution Fig. E24.5

// Pick the system as shown in above figure of book
// Given
m_water = 10 ;// Mass of water  - [lb]
T_water = 35 ;// Temperature of water - [degree F]
m_ice = 4 ;// Mass of ice - [lb]
T_ice = 32 ;// Temperature of ice - [degree F]
m_stm = 6 ;// Initial mass of steam -[lb]
T_stm = 250 ;// Temperature of stm - [degree F]
p = 20 ;// Pressure of system -[psia]

m_total = m_water + m_ice + m_stm ;// Mass of H2O in three phases initially -[lb]
// By following conditions of book, Q = 0, W = 0 , change in PE and change in KE = 0, the energy balance reduces to del_U = 0 

// According to book additional information is obtained from the steam table and CD at given conditions ,it is as follows 
U_ice = -143.6 ;// Specific internal energy of ice -[Btu/lb]
U_water = 3.025 ;// Specific internal energy of water -[Btu/lb]
U_stm = 1092.25 ;// Specific internal energy of steam -[Btu/lb]
V_water = 0.0162 ;// Specific volume of water -[cubic feet/lb]
V_stm = 20.80 ;// Specific volume of steam -[cubic feet/lb]
V_total = m_stm*V_stm ;//Total volume of container ignoring volume of water and ice as they are neglgible

V_sys = V_total/m_total  ;// Specific volume of system -[cubic feet/lb]
U_sys =(m_water*U_water + m_ice*U_ice + m_stm*U_stm)/m_total ;// Final specific internal energy of system -[Btu/lb]

// Trial and error method
// Assume two temperatures and find volume total so as to bracket value of U_sys, Here e take T1 = 190 and T2 = 200 degree F
// Obtain necessary data from steam table at corresponding temperatures

T1 = 190 ;// assumed temperature
U1 = [157.17 1071.83] ;//specific internal energy of liquid and vapour respetively -[Btu/lb]
V1 = [0.0165 41.01] ;// Specific volume of liquid and vapour respetively  -[cubic feet/lb]
x1 = V_sys/V1(2) ;// Quality of vapour
U1_sys = (1-x1)*U1(1) + x1*U1(2); // Specific internal energy of system at T1-[Btu/lb] 

T2 = 200 ;// assumed temperature
U2 = [168.11 1073.96];//  specific internal energy of liquid and vapour respetively -[Btu/lb]
V2 = [0.017 33.601] ;// Specific volume of liquid and vapour respetively  -[cubic feet/lb]
x2 = V_sys/V2(2) ; // Quality of vapour
U2_sys = (1-x2)*U2(1) + x2*U2(2) ;// Specific internal energy of system at T2-[Btu/lb] 

// Check whether assumption is right
if (U_sys > U1_sys  )
   if ( U_sys <U2_sys)
        printf('Assumption is right, now find exact temperature by interpolation between 2 assumed temperatures.\n');
    else
        printf('Assumption is wrong, assume different T2.\n');
    end
  else
 printf('Assumption is wrong,assume different T1.\n');
 end

// Interpolation, to get final temperature corresponding to U_sys
T_sys = T1 + ((T2 - T1)*(U_sys - U1_sys))/(U2_sys - U1_sys);

 printf(' The final temperature obtained by interpolation between 2 assumed temperatures is %.2f degree F.\n',T_sys);
 
// Now obtain specific volume of vapour data at final temperature from steam table and use it to calculate x(quality) , according to book it is
V_vap = 39.35 ;//specific volume of vapour data at final temperature -[cubic feet/lb]
x = V_sys /V_vap ;// Quality of gas at final temperature
 
 //Final state
Vap = m_total*x ;// Mass of vapour at final state - [lb]
stm_con =  m_stm - Vap ;// Mass of steam condenses - [lb]

printf('\nTherefore, mass of steam condenses is %.2f lb.\n',stm_con);