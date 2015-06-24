//example6.4
clc
disp("R_L=8ohm, I_CQ=140 mA, V_CC=10V")
disp("P_ac= 0.48 W")
disp("The turns ratio are specified as N1/N2:1 i.e 3:1")
disp("Therefore N1/N2=3")
n=1/3
disp(n,"n=N2/N1=1/3=")
r=8/(0.333)^2
disp(r,"Therefore R''_L=R_L/n^2=")
disp("1. As the transformer is ideal, whatever is the power delivered to the load,same is the power developed across primary.")
disp("Therefore P_ac(across primary)=0.48W")
disp("2. Using equation (9),")
disp("we get, P_ac=(V_1rms^2)/(R''_L)")
disp("Therefore 0.48=(V_1rms^2)/72")
v=sqrt(34.56)
disp(v,"Therefore V_1rms(in V)=")
disp("But rms value of the load voltage is V_2rms")
disp("So (V1_rms)/(V2_rms)=N1/N2=3/1")
v=5.8787/3
disp(v,"Therefore (V2_rms)(in V)=(V1_rms)/3=")
disp("This is the rms value of the load voltage.")
disp("3. The rms value of the primary voltage is (V1_rms) as calculated above.")
disp("Therefore (V1_rms)=5.8787 V")
disp("4. The power delivered to the load = (I_2rms^2)*R_L       ..Refer equation 13.")
disp("0.48=(I_2rms^2)*8")
i=sqrt(0.06)
disp(i,"(I_2rms)[in A]=")
disp("This is the rms value of the load current as the resistance value used is R_L and not R''_L")
disp("5. The rms values of primary and secondary are related through the transformation ratio.")
disp("Therefore (I_1rms)/(I_2rms)=N2/N1=n=0.333")
i=0.2449*0.333
disp(i,"Thererfore (I_1rms)[in A]=0.2449*0.333= ")
disp("6. The dc power input is,")
p=140*10^-2
disp(p,"P_DC(in W)=(V_CC)*(I_CQ)=")
n=(0.48*100)/1.4
disp(n,"7. %eta=(P_ac *100)/(P_dc)=")
d=1.4-0.48
disp(d,"P_d(in W)=")
disp("This is the power dissipation.")
