//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-13, Example 4, Page 334
//Title: Freeboard Heat Exchange
//==========================================================================================================

clear
clc

//INPUT
Hf=4;//Height of freeboard in m
uo=2.4;//Superficial gas velocity in m/s
ho=350;//Heat transfer coefficient at the bottom of freeboard region in W/m^2 K
hg=20;//Heat transfer coefficient in equivalent gas stream, but free of solids in W/m^2 K

//CALCULATION
zf=[0;0.5;1;1.5;2;2.5;3;3.5;Hf];//Height above the top of the dense bubbling fluidized bed
hr=0;//Assuming heat transfer due to radiation is negligible
a=1.5/uo;//Since decay coefficient from Fig.(7.12), a*uo=1.5s^-1 
n=length(zf);
i=1;
while i<=n
    h(i)=(hr+hg)+(ho-hr-hg)*exp(-a*zf(i)/2);//Heat transfer coefficient from Eqn.(24) for zf=Hf
    i=i+1;
end    
hbar=(hr+hg)+2*(ho-hr-hg)*(1-exp(-a*Hf/2))/(a*Hf);//Mean heat transfer coefficient for the 4-m high freeboard from Eqn.(26)

//OUTPUT
printf('\nThe required relationship is h(W/m^2 K) vs. zf(m) as in Fig.(9a)');
printf('\nHeight above the dense bubbling fluidized bed(m))');
printf('\tHeat transfer coefficient(W/m^2 k)');
i=1;
while i<=n
    mprintf('\n%f',zf(i));
    mprintf('\t\t\t\t\t\t%f',h(i));
    i=i+1;
end
mprintf('\n\nThe mean heat transfer coefficient for the 4-m high freeboard =%fW/m^2 K',hbar);

//====================================END OF PROGRAM ======================================================