//page no 563
clc
// Given
F = 1000 // Force in N
L = 1 // length in m
del_y = 0.35 // extension in mm
d_o = 70 // Outer diameter in mm
d_i = 50 // Innrer diameter in mm
V_f_max = 0.6 // Maximum allowable fiber Volume in cm  fraction 
Vf_glass = 0.945  // V_f for glass
Vf_C_standard = 0.293// V_f for carbon standard modulus
Vf_c_intermediate = 0.237// V_f for carbon intermediate modulus
Vf_c_high = 0.168 //  V_f for carbon high modulus
d_epoxy = 1.14 // density of epoxy resin in g/cm^3
d_C_sm = 1.8 // density of carbon fiber (Standard modulus) in g/cm^3
d_C_im = 1.8 // density of carbon fiber (intermediate modulus) in g/cm^3
d_C_hm = 1.8 // density of carbon fiber (high modulus) in g/cm^3
C_im_cost = 70.00 // cost of carbon fiber (intermediate modulus) in USD/kg 
C_sm_cost = 35.00 // cost of carbon fiber (Standard modulus) in USD/kg 
C_hm_cost = 175.00 // cost of carbon fiber (high modulus) in USD/kg 
d_epoxy = 1.14 // density of epoxy resin in g/cm^3
epoxy_cost = 9.00  // cost of epoxy resin in USD/kg 

printf("Design Example 15.1 \n")
I = %pi/64* (1e-12*(d_o*1e-3)^4-(d_i*1e-3)^4)
E = 4*F*L^3/(3*%pi*del_y*1e-3*((d_o*1e-3)^4-(d_i*1e-3)^4)) // Required modulus of elasticity
printf("\n Part A:\n")
if Vf_glass < V_f_max then
  printf("\n Glass, when embedded in epoxy matrix, meet the stipulated criteria. \n")
end
if Vf_C_standard < V_f_max then
  printf("\n Carbon (standard modulus), when embedded in epoxy matrix, meet the stipulated criteria. \n")
end
if Vf_c_intermediate < V_f_max then
  printf("\n Carbon (intermediate modulus), when embedded in epoxy matrix, meet the stipulated criteria.\n ")
end
if Vf_c_high < V_f_max then
  printf("\n Carbon (high modulus), when embedded in epoxy matrix, meet the stipulated criteria.\n")
end
printf("\n Part B:\n")
Vc = %pi*L*1e-6*(d_o^2 - d_i^2)/4
F_v_C_sm = Vc*Vf_C_standard*1e6  // Fiber Volume in cm^3 for carbon (Standard modulus)

F_m_C_sm = F_v_C_sm * d_C_sm/1000 // Fiber mass for carbon (Standard modulus) in kg

F_c_C_sm = F_m_C_sm * C_sm_cost // Fiber cost for carbon (Standard modulus) in USD

m_v_C_sm = Vc*(1-Vf_C_standard)*1e6 // Matrix Volume in cm^3 for carbon (Standard modulus)

m_m_C_sm = m_v_C_sm * d_epoxy/1000 // Matrix mass for carbon (Standard modulus) in kg

m_c_C_sm = m_m_C_sm * epoxy_cost // Matrix cost for carbon (Standard modulus) in USD

Total_c_C_sm = m_c_C_sm + F_c_C_sm // Total cost for carbon (Standard modulus) in USD

F_v_C_im = Vc*Vf_c_intermediate*1e6 // Fiber Volume in cm^3 for carbon (intermediate modulus)

F_m_C_im = F_v_C_im * d_C_im/1000 // Fiber mass for carbon (intermediate modulus) in kg

F_c_C_im = F_m_C_im * C_im_cost // Fiber cost for carbon (intermediate modulus) in USD

m_v_C_im = Vc*(1-Vf_c_intermediate)*1e6 // Matrix Volume in cm^3 for carbon (intermediate modulus)

m_m_C_im = m_v_C_im * d_epoxy/1000 // Matrix mass for carbon (intermediate modulus) in kg

m_c_C_im = m_m_C_im * epoxy_cost // Matrix cost for carbon (intermediate modulus) in USD

Total_c_C_im = m_c_C_im + F_c_C_im // Total cost for carbon (intermediate modulus) in USD

F_v_C_hm = Vc*Vf_c_high*1e6  // Fiber Volume in cm^3 for carbon (high modulus)

F_m_C_hm = F_v_C_hm * d_C_hm/1000 // Fiber mass for carbon (high modulus) in kg

F_c_C_hm = F_m_C_hm * C_hm_cost // Fiber cost for carbon (high modulus) in USD

m_v_C_hm = Vc*(1-Vf_c_high)*1e6 // Matrix Volume in cm^3 for carbon (high modulus)

m_m_C_hm = m_v_C_hm * d_epoxy/1000 // Matrix mass for carbon (high modulus) in kg

m_c_C_hm = m_m_C_hm * epoxy_cost // Matrix cost for carbon (high modulus) in USD
Total_c_C_hm = m_c_C_hm + F_c_C_hm // Total cost for carbon (high modulus) in USD
printf(" Cost of Carbon (standard modulus) composite is:%.2f ",Total_c_C_sm) // whereas Value in table is 48.50 USD

printf("\n Cost of Carbon (intermediate modulus) composite is:%.2f ",Total_c_C_im)// whereas Value in table is 71.10 USD
printf(" \n Cost of Carbon (high modulus) composite is:%.2f ",Total_c_C_hm) // whereas Value in table is 115.00 USD

printf("\n\n The material of choice (i.e. least expensive) \n is standard modulus carbon fiber composite; the relatively low cost per unit mass of this fiber offsets its relatively low modulus of elasticity and \n required high Volume fraction.")
