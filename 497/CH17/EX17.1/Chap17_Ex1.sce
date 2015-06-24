//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-17, Example 1, Page 434
//Title: Reactor Development Program
//==========================================================================================================

clear
clc

//INPUT
dt=[0.081;0.205;3.6];//Reactor diameter for the three reactors in m
dte=[0.04;0.12;0.70];//Equivalent diameters for the three reactors in m
db=[0.05;0.057;0.07];//Estimated bubble size in the three reactors in m
Kr1=1.3889;//Kinetic constant for Reaction 1 in s^-1
Kr2=0.6111;//Kinetic constant for Reaction 2 in s^-1
Kr3=0.022;//Kinetic constant for Reaction 3 in s^-1
dp=60;//Particle size in micrometer
ephsilonm=0.50;//Void fraction of fixed bed
ephsilonmf=0.55;//Void fraction at minimum fluidized condition
umf=0.006;////Velocity at minimum fluidization condition in m/s
D=2E-5;//Diffusion coefficient of gas in m^2/s
gammab=0.005;//Ratio of volume of dispersed solids to that of bubble phase
uo=0.2;//Superficial gas velocity in m/s
XA=0.9;//Conversion
g=9.81;//Acceleration due to gravity in square m/s^2

//CALCULATION
Kr12=Kr1+Kr2;
n=length(dt);
i=1;
while i<=n
    //Preliminary Calcualtions
    ubr(i)=0.711*(g*db(i))^0.5;//Rise velocity of bubble from Eqn.(6.7)
    ub(i)=1.55*{(uo-umf)+14.1*(db(i)+0.005)}*dte(i)^0.32+ubr(i);//Bubble velocity for Geldart A particles from Equation from Eqn.(6.11)
    delta(i)=uo/ub(i);//Fraction of bed in bubbles from Eqn.(6.29)
    ephsilonf(i)=1-(1-delta(i))*(1-ephsilonmf);//Void fraction of fixed bed from Eqn.(6.20)
    fw=0.6;//Wake volume to bubble volume from Fig.(5.8)
    gammac(i)=(1-ephsilonmf)*((3/(ubr(i)*ephsilonmf/umf-1))+fw);//Volume of solids in cloud to that of the bubble from Eqn.(6.36)
    gammae(i)=((1-ephsilonmf)*((1-delta(i))/delta(i)))-gammab-gammac(i);//Volume of solids in emulsion to that of the bubble from Eqn.(6.35)
    Kbc(i)=4.5*(umf/db(i))+5.85*((D^0.5*g^0.25)/db(i)^(5/4));//Gas interchange coefficient between bubble and cloud from Eqn.(10.27)
    Kce(i)=6.77*((D*ephsilonmf*0.711*(g*db(i))^0.5)/db(i)^3)^0.5;//Gas interchange coefficient between emulsion and cloud from Eqn.(10.34)
    //Effective rate constant from Eqn.(12.32)
    Kf12(i)=(gammab*Kr12+1/((1/Kbc(i))+(1/(gammac(i)*Kr12+1/((1/Kce(i))+(1/(gammae(i)*Kr12)))))))*(delta(i)/(1-ephsilonf(i)));
    //Rate of reaction 2 for fluidized bed from Eqn.(12.14)
    Kf3(i)=(gammab*Kr3+1/((1/Kbc(i))+(1/(gammac(i)*Kr3+1/((1/Kce(i))+(1/(gammae(i)*Kr3)))))))*(delta(i)/(1-ephsilonf(i)));
    //Rate of raection with respect to A from Eqn.(12.35)
    KfA(i)=[[Kbc(i)*Kce(i)/gammac(i)^2+(Kr12+Kce(i)/gammac(i)+Kce(i)/gammae(i))*(Kr3+Kce(i)/gammac(i)+Kce(i)/gammae(i))]*delta(i)*Kbc(i)*Kr12*Kr3/(1-ephsilonf(i))]    /[[(Kr12+Kbc(i)/gammac(i))*(Kr12+Kce(i)/gammae(i))+Kr12*Kce(i)/gammac(i)]*[(Kr3+Kbc(i)/gammac(i))*(Kr3+Kce(i)/gammae(i))+Kr3*Kce(i)/gammac(i)]];
    KfAR(i)=((Kr1/Kr12)*Kf12(i))-KfA(i);//Rate of reaction from Eqn.(12.34)
    KfAR1(i)=((Kr1/Kr12)*Kf12(i));//Since KfA is small
    
    //(b)Relate Selectivity with conversion in three reactors
    x=-log(1-XA);//The term Kf12*tou in Eqn.(12.26)
    tou(i)=x/Kf12(i);//Residence time from Eqn.(12.26)
    y(i)=(KfAR1(i)/(Kf3(i)-Kf12(i)))*(exp(-x)-exp(-tou(i)*Kf3(i)));//CR/CAi from Eqn.(12.27)
    SR(i)=y(i)/XA;//Selectivity of R
    
    //(c)Relate exit composition to space time
    tou1=5;//Space time in s
    XA1(i)=1-exp(-Kf12(i)*tou1);//Conversion from Eqn.(12.26)
    y1(i)=((KfAR1(i)/(Kf12(i)-Kf3(i)))*[exp(-Kf3(i)*tou1)-exp(-Kf12(i)*tou1)]);//CR/CAi R from Eqn.(12.27)
    
    //(d)Calculate height of bed needed to maximize production
    y2(i)=(KfAR1(i)/Kf12(i))*(Kf12(i)/Kf3(i))^(Kf3(i)/(Kf3(i)-Kf12(i)));//CRmax/CAi R from Eqn.(12.37)
    tou2(i)=log(Kf3(i)/Kf12(i))/(Kf3(i)-Kf12(i));//Space time from Eqn.(38)
    Lf(i)=(uo/(1-ephsilonf(i)))*tou2(i);//Length of bed at fully fluidized condition from Eqn.(12.5)
    Lm(i)=Lf(i)*(1-ephsilonf(i))/(1-ephsilonm);//Length of bed when settled
    XA2(i)=1-exp(-Kf12(i)*tou2(i));//Conversion from Eqn.(12.26)
    i=i+1;
end

//OUTPUT
printf('\nLet Laboratory, Pilot plant, Semicommercial unit be Reactor 1,2 & 3 respectively'); 
printf('\n(a)Relation between effective rate constant(Kf12) to the gas flow rate(uo)');
printf('\n\tReactor No.\tKf12(s^-1)\tuo(m/s)');
i=1;
while i<=n
     mprintf('\n\t%1.0f',i);
     mprintf('\t\t%f',Kf12(i));
     mprintf('\t%f',uo);
     i=i+1;
end
printf('\n(b)Relation between selectivity with conversion');
printf('\n\tReactor No.\tKf12(s^-1)\tSR(mol R formed/mol A reacted)');
i=1;
while i<=n
     mprintf('\n\t%1.0f',i);
     mprintf('\t\t%f',Kf12(i));
     mprintf('\t%f',SR(i));
     i=i+1;
end
printf('\n(c)Relation between exit compostion and space time');
printf('\n\tReactor No.\tXA\t\tCR/CAi');
i=1;
while i<=n
     mprintf('\n\t%1.0f',i);
     mprintf('\t\t%f',XA1(i));
     mprintf('\t%f',y1(i));
     i=i+1;
end
printf('\n(d)Height of bed needed to maximize the production of acrylonitrile');
printf('\n\tReactor No.\tLm(m)\t\tXA');
i=1;
while i<=n
     mprintf('\n\t%1.0f',i);
     mprintf('\t\t%f',Lm(i));
     mprintf('\t%f',XA2(i));
     i=i+1;
end

//====================================END OF PROGRAM ======================================================