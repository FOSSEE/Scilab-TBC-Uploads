pathname=get_absolute_file_path('3_25.sce')
filename=pathname+filesep()+'3_25_data.sci'
exec(filename)
//Volume flow(in m^3/kg)
v1=(R*T1)/(p1*10^5)
//Temperature at end of compression stroke(in K)
T2=T1*(r)^(y-1)
//Pressure at the end of compression stroke(in bar)
p2=(r^y)*p1
//Temperature at start of constant pressure heat addition(in bar)
T3=(p3/p2)*T2
//Heat supplied at constant volume(in kJ/kg)
qv=Cv*(T3-T2)
//Heat supplied at constant pressure(in kJ/kg)
qp=Hs-qv
//Temperature at start of expansion stroke(in K)
T4=T3+(qp/Cp)
//Volume flow at start of expansion(in m^3/kg)
v4=(v1/r)*(T4/T3)
//Temperature at end of expansion stroke(in K)
T5=T4*(v4/v1)^(y-1)
//Heat rejected(in kJ/kg)
Hr=Cv*(T5-T1)
//Work done(in kJ/kg)
W=Hs-Hr
//Efficiency of dual cycle
n1=W/Hs
//Mean effective pressure(in bar)
pm=(W*10^3)/(v1*(1-(1/r)))*10^-5
//Temperature rise resulting from heat addition(in K)
T3v=(Hs/(Cv))+T2
//Pressure at end of heat addition process(in bar)
p3v=T3v*(p2/T2)
//Temperature at end of expansion stroke(in K)
T4v=T3v*((1/r)^(y-1))
//Heat rejected(in kJ/kg)
Hrv=Cv*(T4v-T1)
//Work done(in kJ)
Wv=Hs-Hrv
//Efficiency of constant volume cycle
n2=Wv/Hs
//Mean effective pressure(in bar)
pm2=(Wv*1000)/((1-(1/r))*v1)*10^-5
//If the gases were expanded isentropically to their original pressure of p1bar then temperature T6 at the end of expansion would be(in K)
T6=T3v*(p1/p3v)^((y-1)/y)
//Heat rejected at constant pressure(in kJ/kg)
Hr1=Cp*(T6-T1)
//Increase in work(in kJ/kg)
Win=Hrv-Hr1
printf("\n\nRESULTS\n\n")
printf("\nEfficiency of dual cycle:%f\n",n1*100)
printf("\nMean effective pressure:%f\n",pm)
printf("\nEfficiency of constant volume cycle:%f\n",n2*100)
printf("\nMean effective pressure:%f\n",pm2)
printf("\nIncrease in work:%f\n",Win)