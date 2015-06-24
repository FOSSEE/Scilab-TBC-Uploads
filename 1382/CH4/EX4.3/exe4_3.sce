
// Example 4.3: Plot the min and max transconductance curve
clc, clear
//given data
//VGS_off=-2 to -6 volt
//IDSS=8 to 20 mA
//Formula : ID=IDSS*[1-VGS/VGS_off]^2
//Let take some values for plotting
IDSS=8;//mA
VGS=0:-0.5:-2;//in Volt
VGS_off=-2 ;// in Volt
ID=zeros(1,5)
for i=1:5
    ID(i)=IDSS*[1-VGS(i)/VGS_off]^2
end
plot(VGS,ID);
xlabel("Gate to source voltage (Vgs)","fontsize",2)
ylabel("Drain current in milli ampere(Id)","fontsize",2)
