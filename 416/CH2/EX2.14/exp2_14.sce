clc
disp("example 2.14")
disp("(a)")
//given
transformer1.motorload=300;transformer1.demandfactorm=0.6;tarnsformer1.commercialload=100;transformer1.demandfactorc=0.5;transformer1.diversityfactor=2.3;transformer2.residentalload=500;transformer2.demandfactor=0.4;transformer2.diversitryfactor=2.5;transformer3.residentalload=400;transformer3.demandfactor=0.5;transformer3.diversityfactor=2.0;diversitybtwxmer=1.4
peakloadoftransformer1=((transformer1.motorload*transformer1.demandfactorm)+(tarnsformer1.commercialload*transformer1.demandfactorc))/transformer1.diversityfactor
peakloadonxmer=(transformer2.residentalload*transformer2.demandfactor)/transformer2.diversitryfactor
peakloadonxmer3=(transformer3.residentalload*transformer3.demandfactor)/(transformer3.diversityfactor)
printf("peak load on transformer 1 =(300x0.6+100x0.5)/2.3 =%dkW \npeak load on transformer 2 =%dkW \n peak load on transformer 3 =%dkW",peakloadoftransformer1,peakloadonxmer,peakloadonxmer3)
disp("(b)")
peakloadonfeeder=(peakloadoftransformer1+peakloadonxmer+peakloadonxmer3)/diversitybtwxmer
printf("peak load on feeder =(100+80+100)/1.4 =%dkW",peakloadonfeeder)
