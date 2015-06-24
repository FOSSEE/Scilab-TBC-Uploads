// Comparison of saturation temperatures
clc
t1 = 0 // temperature in kelvin
t2 = 300 // temperature in kelvin
m_net_Gd = 7 // net magnetic moment of gadolinium
m_net_Co = 1.7 // net magnetic moment of cobalt
t_c_Gd = 289 // curie temperature for Gd
printf("\n Example 16.2")
printf("\n Part A:")
if m_net_Gd> m_net_Co then
printf("\n At %d K, Net magnetic moment of gadolinium i.e. %d is greater than net magnetic moment of cobalt i.e. %.1f ",t1,m_net_Gd,m_net_Co)
printf("\n So, Gd will have higher saturation magnetization")
end
printf("\n\n Part B:")
if t_c_Gd<t2 then
    printf("\n At temperature %d K, Gd is above its curie temperature of %dK",t2,t_c_Gd)
    printf("\n Gd will be paramagnetic at %d K and will have negligible magnetization\n as compared to Co, which has higher curie temperature",t2)
end

