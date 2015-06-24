//Ex7_6
//Refer fig7.4
clc
AM=100
disp("AM="+string(AM)+"dB") // Midband gain 
fc1=1*10^(4)
disp("fc1= "+string(fc1)+" Hz")// First Critical frequency
fc2=10^5
disp("fc2= "+string(fc2)+" Hz")// Second Critical frequency
fc3=10^6
disp("fc3= "+string(fc3)+" Hz")// Third Critical frequency
disp("part(i)")
Af1=85
disp("Af1="+string(Af1)+"dB") //  gain at 50 kHz and -20dB/decade roll-off
f=50*10^(3)
disp("f= "+string(f)+" Hz")// operating frequency
theta_A=- atand(f/fc1)-  atand(f/fc2)-  atand(f/fc3)//phase shift in radians
disp("theta_A="+string(theta_A)+" degree")// Phase shift for feedback gain Af1
theta_pm=180-abs(theta_A)// formulae phase margin
disp("theta_pm=180-abs(theta_A)="+string(theta_pm)+" degree")// Phase Margin for feedback gain Af1
disp("Amplifier stable")// Since phase margin is (+)ive
disp("part(ii)")
Af2=50
disp("Af2="+string(Af2)+" dB") //  gain at 500 kHz and -40dB/decade roll-off
f=500*10^(3)
disp("f= "+string(f)+" Hz")//  frequency
theta_A=- atand(f/fc1)-  atand(f/fc2)-  atand(f/fc3)//phase shift in radians
disp("theta_A= "+string(theta_A)+" degree")//  Phase shift for feedback gain Af2
theta_pm=180-abs(theta_A)// formulae phase margin
disp("theta_pm=180-abs(theta_A)="+string(theta_pm)+" degree")// Phase Margin for feedback gain Af1
disp("Amplifier  unstable")// Since phase margin is (-)ive
disp("part(iii)")
Af3=20
disp("Af3="+string(Af3)+"dB") //  gain at 1100 kHz and -60dB/decade roll-off
f=1100*10^(3)
disp("f= "+string(f)+" Hz")//  frequency
theta_A=- atand(f/fc1)-  atand(f/fc2)-  atand(f/fc3)//phase shift in radians
disp("theta_A="+string(theta_A)+" degree")// Phase shift for feedback gain Af3
theta_pm=180-abs(theta_A)// formulae phase margin
disp("theta_pm=180-abs(theta_A)="+string(theta_pm)+" degree")// Phase Margin for feedback gain Af1
disp("Amplifier unstable")// Since phase margin is (-)ive
//NOTE:Correct ans for part(i) phase margin ,theta_pm=71.882476 degree but in book given as 71.86 degree
// correct ans for part(iii) phase shift, theta_A=-222.01103 degree but in book given as -220.02 degree    

