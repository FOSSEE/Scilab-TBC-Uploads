N1=24//no. of trunked channels
N=10//10 channels trunked together
Pb=0.01//blocking probability
Aav=4.46//offered traffic load
N2=5//2 groups of 5 trunked channels each
Aav1=1.36
Aav2=2*Aav1
Ex=Aav2/Aav//extent
if Aav>Aav2 then
    disp(,'10 channels trunked together can support more traffic at a specific GOS(say 0.01) than two 5-channel trunk individually do')
else
    disp(,'10 channels trunked together can support less traffic at a specific GOS(say 0.01) than two 5-channel trunk individually do')
end
printf('\nextent of more traffic supported by N=10 system as compared to two 5-channel trunked systems= %.d percent',Ex*100);
