//exmaple3.13
clc
disp("Given values are, P_i=2.5 kW, (P_cu)F.L. = 3.5kW, 400 kVA")
disp("Iron losses are constant for 24 hours. So energy spent due to iron lossses for 24 hours is,")
p=2.5*24
disp(p,"P_i(in kWh)=2.5*24 hours=")
disp("Total energy output in a day from given load cycle is,")
e=(300*6)+(200*10)+(100*4)
disp(e,"Energy output (in kWh)= (300*6 hours)+(200*10 hours)+(100*4 hours)=")
disp("To calculate energy spent due to copper loass,")
disp("i)Load 1 of 300 kW at cos(phi)=0.8")
k=300/0.8
disp(k,"Therefore, kVA supplied = kW/cos(phi) =300/0.8=")
n=375/400
format(7)
disp(n,"Therefore, n=(load kVA)/(kVA rating)=375/400=")
disp("Copper losses are proportional to square of kVA ratio i.e. n^2")
l=3.5*(0.9375)^2
format(6)
disp(l,"Therefore, Load 1 P_cu = n^2*(P_cu)F.L. =(0.9375)^2*3.5=")
e=3.076*6
format(7)
disp(e,"Energy spent(in kWh)=3.076*6 hours=")
disp("ii) Load 2 of 200 kW at cos(phi)=0.7")
k=200/0.7
format(9)
disp(k,"Therefore, kVA supplied=(kW)/cos(phi)=200/0.7=")
n=285.7142/400
format(7)
disp(n,"n=(Load kVA)/(kVA rating)=")
p=3.5*(0.7142^2)
disp(p,"Therefore, Load 2 P_cu(in kW)= n^2*(P_cu)F.L.= (0.7142^2)*3.5=")
p=1.7857*10
disp(p,"Therefore, Energy spent(in kWh)= 1.7857*10 = ")
disp("iii) Load 3 of 100 kW at cos(phi)=0.9")
k=100/0.9
format(8)
disp(k,"Therefore, kVA supplied=kW/cos(phi)=100/0.9=")
n=111.111/400
format(7)
disp(n,"Therefore, n=111.111/400=")
p=3.5*(0.2778^2)
disp(p,"Therefore, Load 3 P_cu(in kW)= n^2*(P_cu)F.L.=(0.2778^2)*3.5= ")
e=0.2701*4
disp(e,"Therefore, Energy spent(in kWh)=0.2701*4=")
disp("iv) No load hence negligible copper losses.")
t=60+18.457+17.857+1.0804
format(8)
disp(t,"Therefore, Total energy spent = Energy spent due to [Iron losses + Total copper loss]= 60+18.457+17.857+1.0804 = ")
disp("and Total output = 4200 kWh")
disp("Therefore, All day eta= (Total output for 24 hours)/(Total output for 24 hours+Total energy spent for 24 hours)")
n=420000/(4200+97.3944)
format(6)
disp(n,"= 4200*100/(4200+97.3944) = ")
