//Chapter-2,Example2_4_10,pg 2-28

N=5000*10^2                                   //Number of lines per meter 

wavelength=6000*10^-10                               //wavelength of light 

m_max=1/(N*wavelength)

//for absent spectra

n=[1 2 3]

m=3*n                                         //as b = 2a         and m = ((a+b)/a)*n

printf('\n The order of absent spectra is m = %.0f ',m_max)
