//Example 4-2,Page NO - 145

clear
clc

fc =4.2*10^6
voice_f_l = 300
voice_f_u = 3400

fll_usb = fc + voice_f_l
ful_usb = fc + voice_f_u

fll_lsb = fc - voice_f_l
ful_lsb = fc - voice_f_u

flsb = (fll_lsb + ful_lsb)/2

printf('The range for USB is %.1f Hz to %.1f Hz',fll_usb,ful_usb)
printf('\n The range for LSB is %.1f Hz to %.1f Hz',fll_lsb,ful_lsb)
printf('\n The approximate center frequency of the filter \n to select the lower sideband is %.1f Hz',flsb)
