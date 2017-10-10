//chapter19
//example19.14
//page424

Vc=5 // V
V_lower=2.5 // V
V_upper=2.5 // V
R=2 // kilo ohm

// figure given in book is just for understanding purpose.It is not a part of solution.
// however, the figure has been made in xcos and screenshot has been attached for reference

// since power=(rms voltage)^2/R we get

Pc=(0.707*Vc)^2/R
P_lower=(0.707*V_lower)^2/R
P_upper=(0.707*V_upper)^2/R
Pt=Pc+P_lower+P_upper

printf("power delivered by carrier = %.3f mW \n",Pc)
printf("power delivered by lower sideband = %.3f mW \n",P_lower)
printf("power delivered by upper sideband = %.3f mW \n",P_upper)
printf("total power delivered by AM wave = %.3f mW \n",Pt)
