//Ex9_10 Refer Fig.9.17(a)
clc
V_gamma=0.6
disp("V_gamma= "+string(V_gamma)+" volts") //Threshold voltage
VEE=-5.2
disp("VEE= "+string(VEE)+" volts") //  voltage supply 
VBE3=0.7
VBE4=VBE3
VBE5=VBE3
disp("VBE3=VBE4=VBE5 "+string(VBE3)+" volts") //base-emitter voltage
RE=779
disp("RE= "+string(RE)+ " ohm")  // Emitter-resistance
RL2=220
disp("RL2= "+string(RL2)+ " ohm")  // Load resistance
RL3=245
disp("RL3= "+string(RL3)+ " ohm")  // Load resistance
VREF=-1.29
disp("VREF= "+string(VREF)+" volts") // Reference- voltage 
V_1=-0.7
disp("V(1)= "+string(V_1)+" volts") // Acceptable voltage for high logic  
V_0=-1.7
disp("V(0)= "+string(V_0)+" volts") // Acceptable voltage for low logic 

disp("part(i)")// part(i)of question
VE=VREF-VBE3
disp("VE=VREF-VBE3= "+string(VE)+" volts") // Emitter- voltage  
IE=(VEE-VE)/RE
disp("IE=(VEE-VE)/RE= "+string(IE)+" A") //Emitter- Current
IC3=IE// since IC=IE neglecting IB
disp("IC3=IE= "+string(IE)+" A") //Collector- Current
vC3=IC3*RL3
disp("vC3=IC3*RL3= "+string(vC3)+" volts") // Collector- voltage 
vY=vC3-VBE5
disp("vY=vC3-VBE5= "+string(vY)+" volts") // Emitter follower output voltage for vB=V(0) 
vC2=0 
vX=vC2-VBE4
disp("vX=vC2-VBE4= "+string(vX)+" volts") // Emitter follower output voltage  for vB=V(0)  
VBEr=(V_0)-VE
disp("Base -Emitter reverse voltage,VBEr=V(0)-VE= "+string(VBEr)+" volts")//Base- Emitter junction reverse voltage ,this is sufficient to keep T1 and T2 off since threshold =0.6V
disp("Transistor T1 and T2 off since VBEr < V_gamma") // Since VBEr < V_gamma hence T1 and T2 off

disp("part(ii)")// part(ii)of question
IC2=IE
VBE=0.7 
vB=V_1
IC3=0
VC3=0
vY=VC3-VBE5
disp("vY=VC3-VBE= "+string(vY)+" volts")// Emitter follower output voltage  for SECOND CASE for vB=V(1)  
VE=vB-VBE
disp("VE=vB-VBE= "+string(VE)+" volts") // Emitter- voltage   
VBE3=VREF-VE
disp("VBE3=VREF-VE= "+string(VBE3)+" volts")//Base- Emitter junction voltage
disp("VBE3 is smaller than V_gamma,hence T3 is off")
IC2=(VEE-VE)/RE
disp("IC2=(VEE-VE)/RE= "+string(IC2)+" A") //Collector- Current for T2(transistor)
vC2=IC2*RL2
disp("vC2=IC2*RL2= "+string(vC2)+" volts") // Collector- voltage for T2
vX=vC2-VBE4
disp("vX=vC2-VBE4= "+string(vX)+" volts") // Emitter follower output voltage for vB=V(1)

disp("part(iii)")// part(iii)of question 
VE3=-1.99
disp("VE3=VE= "+string(VE3)+" volts") //  Transistor T3 Emitter- voltage ,when T3 is conducting  
VB3=VREF
disp("VB3=VREF= "+string(VB3)+" volts") // Base- voltage when T3 is conducting
IC3=(VEE-VE3)/RE// Collector current for T3 neglecting IB
disp("IC3=(VEE-VE3)/RE= "+string(IC3)+" A") //Collector- Current
VC3=IC3*RL3
disp("VC3=IC3*RL3= "+string(VC3)+" volts") // Collector- voltage when T3 is conducting  
VCB3=VC3-VB3
disp("VCB3=VC3-VB3= "+string(VCB3)+" volts") // Base- voltage when T3 is conducting  
//All parameters have appropriate signs for npn BJT hence BJT in active region not in saturation in which VCB will have a (-)value
disp("All parameters have appropriate signs for npn BJT hence BJT in active region ")  


// NOTE: Author ha not used any symbol for Base- Emitter junction reverse voltage   But I have used 'VBEr' for it.
// ERROR :sign of IE is given wrong in the book in part(i) and sign of IC2 in part(ii)
// In part(i) Correct Formulae of vC3 is vC3 =IC3*RL3 but given in book is vC3 =(-)IC3*RL3  because author has  included the (-)ive sign or the polarity of IC3 in the formulae 
// IN book in part(ii) mistakenly it  is written as vB=V_0 =-0.7 V but Correct expression is vB=V_1=-0.7 V because vB is at high at V_1=-0.7 V
// In part(ii) Author has used formulae vC2=-IC2*RL2  because he has included the (-)ive sign of the IC2  in the formulae  but I have used vC2=IC2*RL2 to remove any ambiguity in program




