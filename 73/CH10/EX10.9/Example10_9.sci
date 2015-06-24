//Chapter 10_Special Purpose Amplifiers
//Caption : Common Emitter Amplifier Parameters
//Example10.9: A single common emitter amplifier has following device and circuit parameters: Rb=60 Ohm,Rs=40 Ohm,Cu=1.5 pF,Cl=1 pF,ft=1.6 GHz at Ic=2.5 mA quiescent current.Determine each of the following for two values of Rl: 30 Ohm and 100 Ohm. a)f1 b)F2 (c)BW (d)Avmid (e)avmid*Bw.
clear;
clc;
Ft=1.6*10^9;//reduced unity gain frequency in Hz
Ic=2.5*10^-3;//collector current in A
Vt=25*10^-3;//threshold voltage at room temperature
gm=Ic/Vt;//transconductance
Cu=1.5*10^-12;
Cl=1*10^-12;
Rs=40;
Rb=60;
C2=gm/(2*%pi*Ft)-Cu
for i=1:2,
    if i==1 then
        Rl=30;//load resistance
        F1=1/(2*%pi*(Rs+Rb)*(C2+Cu*(1+gm*Rl)));// first break frequency
        F2=1/(2*%pi*Rl*(Cu+Cl));//second break frequency
        BW=F1;//since single common emitter amplifier so n=1 thus BW=F1*sqrt(2^(1/n)-1),i.e.,BW=F1
        Avmid=-gm*Rl;//mid frequency gain
        GBW=Avmid*BW;// gain-bandwidth product
        disp('********For Rl=30 Ohm********')
        disp('MHz',F1/10^6,'first break frequency is:')
        disp('MHz',F2/10^6,'second break frequency is:')
        disp('MHz',BW/10^6,'Bandwidth is:')
        disp(abs(Avmid),'mid frequency gain is:')
        disp('MHz',abs(GBW)/10^6,'gain-bandwidth product is:')
    else
        Rl=100;//load resistance in ohm        
        F1=1/(2*%pi*(Rs+Rb)*(C2+Cu*(1+gm*Rl)));// first break frequency
        F2=1/(2*%pi*Rl*(Cu+Cl));//second break frequency
        BW=F1;//since single common emitter amplifier so n=1 thus BW=F1*sqrt(2^(1/n)-1),i.e.,BW=F1
        Avmid=-gm*Rl;//mid frequency gain
        GBW=Avmid*BW;// gain-bandwidth product
        disp('********For Rl=100 Ohm********')
        disp('MHz',F1/10^6,'first break frequency is:')
        disp('MHz',F2/10^6,'second break frequency is:')
        disp('MHz',BW/10^6,'Bandwidth is:')
        disp(abs(Avmid),'mid frequency gain is:')
        disp('MHz',abs(GBW)/10^6,'gain-bandwidth product is:')
    end
end