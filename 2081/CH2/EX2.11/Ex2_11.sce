Td=1*10^(-1*6)
Delf=1*10^6//difference in frequency
printf("\nDelf= %.f MHz",Delf*10^(-6));
Bc=1/(2*%pi*Td)//coherence bandwidth
printf('\ncoherence bandwidth= %.2f kHz',Bc*10^(-3))
if Delf>Bc then
    disp(,'Correlative fading  fading will not be experienced as Delf>Bc')
    else disp(,'Correlative fading  fading will be experienced as Delf<Bc')
end

