clc 
// Given that
lambda1 = 5.461e-7 // wavelength of light emitted by mercury vapour lamp in meter
band_width1 = 6e8 // band width for mercury vapour lamp in Hz
lambda2 = 6.328e-7 // the operating wavelength of light for He Ne laser 
band_width2 = 1e6 // band width for laser in Hz
// Sample Problem 5 on page no. 1.41
printf("\n # PROBLEM 5 # \n")
delta_lambda1 = (lambda1^2 * band_width1) / 3e8 // calculation for difference between two wavelength for mercury vapour
delta_L1 = lambda1^2 / delta_lambda1 // calculation for coherence length for mercury vapour lamp
delta_lambda2 = (lambda2^2 * band_width2) / 3e8 // calculation for difference between two wavelength for He Ne laser
delta_L2 = lambda2^2 / delta_lambda2 // calculation for coherence length for He Ne laser
R = delta_L1/delta_L2 // calculation for ratio of coherence length of mercury vapour lamp to the coherence length of He Ne laser
printf("\n Standard formula used \n delta_lambda = lambda^2*band_width / c, \n coherence length = lambda^2/delta_lambda.\n")
printf("\n The ratio of coherence length of mercury vapour lamp to the coherence length of He Ne laser = 1:%d. ",1/R)
