clc;
//page 296
//problem 5.11

//case 1(a)
//f = 400Hertz, fs = 8000Hertz
f = 400
fs = 8000

//We know that maximum signal to noise ratio(SNR_max) = 3*(fs^2)/(8*(pi^2)*(f^2))
SNR_max = 3*(fs^2)/(8*(%pi^2)*(f^2))
//SNR_max in decibels is SNR_max_db
SNR_max_db = 10*log10 (SNR_max)

disp('Maximum signal to noise ratio for f = 400 & fs = 8000 is '+string(SNR_max)+' = '+string(SNR_max_db)+' db')

//case 1(b)
//f = 400Hertz, fs = 16000Hertz
f = 400
fs = 16000

//We know that maximum signal to noise ratio(SNR_max) = 3*(fs^2)/(8*(pi^2)*(f^2))
SNR_max = 3*(fs^2)/(8*(%pi^2)*(f^2))

//SNR_max in decibels is SNR_max_db
SNR_max_db = 10*log10 (SNR_max)

//Given solution is 13.8385 dB obtained solution is 17.838515 dB

disp('Maximum signal to noise ratio for f = 400 & fs = 16000 is '+string(SNR_max)+' = '+string(SNR_max_db)+' db')

//case 2(a)
//f = 400Hertz, fs = 8000Hertz & fc =  1000Hertz
f = 400
fs = 8000
fc = 1000

//If a 1kHz low pass post reconstruction filter is used then maximum signal to noise ratio(SNR_max) = 3*(fs^3)/(8*(pi^2)*(f^2)*fc)
SNR_max = 3*(fs^3)/(8*(%pi^2)*(f^2)*fc)
//SNR_max in decibels is SNR_max_db
SNR_max_db = 10*log10 (SNR_max)

disp('If a 1kHz low pass post reconstruction filter is used then')

disp('Maximum signal to noise ratio for f = 400, fs = 8000 & fc = 1000 is '+string(SNR_max)+' = '+string(SNR_max_db)+' db')

//case 2(b)
//f = 400Hertz, fs = 16000Hertz & fc =  1000Hertz
f = 400
fs = 16000
fc = 1000

//If a 1kHz low pass post reconstruction filter is used then maximum signal to noise ratio(SNR_max) = 3*(fs^3)/(8*(pi^2)*(f^2)*fc)
SNR_max = 3*(fs^3)/(8*(%pi^2)*(f^2)*fc)
//SNR_max in decibels is SNR_max_db
SNR_max_db = 10*log10 (SNR_max)

disp('Maximum signal to noise ratio for f = 400, fs = 16000 & fc = 1000 is '+string(SNR_max)+' = '+string(SNR_max_db)+' db')
