clc
d = 150 // diameter in mm
h = 10 // thickness in mm
R = d/2 // radius in mm
mu = 0.2 // coefficient of friction
sigma_0 = 200 // N/mm^2
Rs = R - (h/(2*mu))*log(1/(sqrt(3)*mu)) // sticking radius in mm
Ps = sigma_0*exp(2*mu*(R-Rs)/h) // pressure at sticking radius in N/mm^2
function y=f(r)
    y=2*%pi*r*sigma_0*exp(2*mu/h*(R-r))
endfunction
L_sld = intg(48.5,75,f) 
L_sld = L_sld/1000 // load on sliding portion in kN
Pc = Ps + (2*sigma_0*Rs)/(h*sqrt(3)) // pressure at centre in N/mm^2
L_sp = (Pc+Ps)*%pi*(Rs)^2/(2*1000) // load on sticking portion in kN
F_l = L_sld + L_sp // total forging load in kN
printf("\n Sticking radius = %0.1f mm \n Total forging load = %0.3f MN",Rs ,F_l/1000)
// 'Answers vary due to round off error'
