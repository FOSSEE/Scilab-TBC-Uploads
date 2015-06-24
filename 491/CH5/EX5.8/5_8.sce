g = 9810 ; // Specific weight of water in N/m3
h = 2; // Height of dam in m
s = 0.8 ; // Distance between square cross section in m
sa = 8e06 ; // Maximum allowable stress in Pa
b = ((g*(h^3)*s)/sa)^(1/3) ; // Dimension of croossection in m
disp("m",b,"the minimum required dimension b of the posts")
