clear all; clc;

disp("The enthalpies at various points have t be determined first. For the steam turbine cycle,fro the Mollier diagram or steam tables,we have h1=hf1=83.6")

h2=83.6+(0.0185*(1000-1.5)*144)/(778*0.80)
printf(" h2=h1+nu*deltap/ETA_p =%0.1f Btu/lbm",h2)

disp("h3=1447 Btu/lbm")

disp("s_s4=s3=1.61 Btu/(lbm-R)")

disp("hs4=925 Btu/lbm")

disp("Hence from ETAst=(h3-h4)/(h3-hs4) we have h4=h3-(h3-hs4)*ETAst")
h3=1447
hs4=925
ETA_st=0.85
h4=h3-(h3-hs4)*ETA_st
printf(" h4= %0.0f Btu/lbm",h4)

h4=1003
h2=87.9
h1=83.6
ETA_ths=[(h3-h4)-(h2-h1)]/(h3-h2)
printf("\n The thermal efficiency of the steam turbine cycle is then obtained as ETA_th,s=(Wst-Wp)/(Qin,s)=%0.4f ",ETA_ths)//it has been rounded off to 32.3 in the book

disp("For the gas turbine cycle, an ideal gas with constant Cp is assumed for the working gas. With Cp=0.24 Btu/(lbm-R) and k=1.4 we have T6")
T5=540
//Let n=p6/p5 and m= (k-1)/k
n=15
m=0.2857
ETAc=0.82
T6=T5+[T5*({(n)^(m)}-1)]/ETAc
printf("\n T6= %0.0fR=849 degrees Farenheit",T6)

T7=2560
//let b=(1/15)^0.2857
b=0.461
ETA_gt=0.85
T8=T7-T7*[1-b]*ETA_gt
printf("\n T8=%0.0f R= 928 degrees Farenheit",T8)

disp("Which should be greater than T3")
T7=2560
T8=1388
T6=1309
T5=540
ETA_thg=[(T7-T8)-(T6-T5)]/(T7-T6)
printf("\n The thermal efficiency of the gas turbine is obtained as %0.3f=32.2 percent",ETA_thg)

disp("From the energy balance equation across  the HRSG,we have m_g*Cp*(T8-T9)")
disp("ms/mg=[Cp*(T8-T9)]/(h3-h2)")
//let x=ms/mg
Cp=0.24
T8=928
T9=450
h3=1447
h2=87.9
x=[Cp*(T8-T9)]/(h3-h2)
printf("\n Thus ms/mg=%0.3f",x)

disp("Hence the thermal efficiency of the combined cycle is obtained as ETA_th,c=[(Wgt-Wc)+(ms/mg)*(Wst-Wp)]/[Cp*(T7-T6)]")
ETA_thc=[0.24*(1172-769)+0.084*(439.7)]/(0.24*1251)
printf("\n ETA_th,c= %0.3f=44.5 percent",ETA_thc)














































































