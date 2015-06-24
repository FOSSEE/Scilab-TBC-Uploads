//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-8, Example 1, Page 206
//Title: Performance of a Fast Fluidized Vessel
//==========================================================================================================
clear
clc

//INPUT
Lmf=2.4;//Length of bed at minimum fluidized condition in m
uo=[2;4;6];//Superficial gas velocity in m/s
GsII=100;//Solid circulation rate in kg/m^2 s for Mode II
uoIII=4;//Superficial gas velocity in m/s for Mode III
GsIII=[42;50;100;200;400];//Solid circulation rate in kg/m^2 s for Mode III
GsIV=[70;100;120];//Solid circulation rate in kg/m^2 s for Mode IV
dt=0.4;//Column diamter in m
Ht=10;//Height of column in m
rhos=1000;//Density of solid in kg/m^3
dpbar=55;//Particle diameter in micrometer
ephsilonmf=0.5;//Void fraction at minimum fluidization condition

//CALCULATION
//Mode I
ephsilonstar=0.01;//Saturation carrying capacity of gas
ephsilonsd=[0.2;0.16;0.14];//Solid holdup in lower dense region from Fig.8(b) for various uo
n=length(uo);
i=1;
Hfguess=2;//Guess value of height
while i<=n
    a(i)=3/uo(i);//Decay constant
    function[fn]=solver_func(Hf)//Function defined for solving the system
        fn=Lmf*(1-ephsilonmf)-((ephsilonsd(i)-(ephsilonstar+(ephsilonsd(i)-ephsilonstar)*exp(-a(i)*Hf)))/a(i))-Ht*ephsilonsd(i)+Hf*(ephsilonsd(i)-ephsilonstar);
    endfunction
    [Hf(i)]=fsolve(Hfguess,solver_func,1E-6);//Using inbuilt function fsolve for solving Eqn.(10) for Hf
    Hd(i)=Ht-Hf(i);//Height of lower densce region
    ephsilonse(i)=ephsilonstar+(ephsilonsd(i)-ephsilonstar)*exp(-a(i)*Hf(i));//Solid holdup at exit
    GsI(i)=rhos*uo(i)*ephsilonse(i);//Solid circulation rate from Eqn.(4)
    i=i+1;
end

//Mode II
i=1;
Hfguess2=2;//Guess value of height
while i<=n
    ephsilonseII(i)=GsII/(rhos*uo(i));//Solid holdup at exit
    function[fn]=solver_func1(Hf)//Function defined for solving the system
        fn=ephsilonseII(i)-ephsilonstar-(ephsilonsd(i)-ephsilonstar)*exp(-a(i)*Hf);//From Eqn.(7)
    endfunction
    [HfII(i)]=fsolve(Hfguess2,solver_func1,1E-6);//Using inbuilt function fsolve for solving Eqn.(10) for Hf
    HdII(i)=Ht-HfII(i);//Height of lower dense region
    //Length of bed minimum fluidization condtion
    LmfII(i)=(1-ephsilonmf)^-1*[((ephsilonsd(i)-ephsilonseII(i))/a(i))+Ht*ephsilonsd(i)-HfII(i)*(ephsilonsd(i)-ephsilonstar)];
    i=i+1;
end

//Mode III
aIII=3/uoIII;//Decay constant
ephsilonsdIII=0.16;//Solid holdup at lower dense region
i=1;
m=length(GsIII);
Hfguess3=2;//Guess value of height 
while i<=m
    ephsilonseIII(i)=GsIII(i)/(rhos*uoIII);//Solid holdup at exit
    function[fn]=solver_func2(Hf)//Function defined for solving the system
        fn=ephsilonseIII(i)-ephsilonstar-(ephsilonsdIII-ephsilonstar)*exp(-aIII*Hf);//From Eqn.(7)
    endfunction
    [HfIII(i)]=fsolve(Hfguess3,solver_func2,1E-6);//Using inbuilt function fsolve for solving Eqn.(10) for Hf
    HdIII(i)=Ht-HfIII(i);//Height of lower dense region
    //Length of bed at minimum fluidization condition
    LmfIII(i)=(1-ephsilonmf)^-1*[((ephsilonsdIII-ephsilonseIII(i))/aIII)+Ht*ephsilonsdIII-HfIII(i)*(ephsilonsdIII-ephsilonstar)];
    i=i+1;
end

//Mode IV
i=1;
Hfguess4=2;//Guess value of height
while i<=n
    aIV(i)=3/uo(i);//Decay constant
    ephsilonseIV(i)=GsIV(i)/(rhos*uo(i));//Solid holdup at exit
    function[fn]=solver_func3(Hf)//Function defined for solving the system
        fn=ephsilonseIV(i)-ephsilonstar-(ephsilonsd(i)-ephsilonstar)*exp(-aIV(i)*Hf);//From Eqn.(7)
    endfunction
    [HfIV(i)]=fsolve(Hfguess4,solver_func3,1E-6);//Using inbuilt function fsolve for solving Eqn.(10) for Hf
    HdIV(i)=Ht-HfIV(i);//Height of lower dense region
    //Length of bed at minimum fluidization condition
    LmfIV(i)=(1-ephsilonmf)^-1*[((ephsilonsd(i)-ephsilonseIV(i))/aIV(i))+Ht*ephsilonsd(i)-HfIV(i)*(ephsilonsd(i)-ephsilonstar)];
    i=i+1;
end

//OUTPUT
printf('\nMode I');
printf('\n\tuo(m/s)\t\tephsilonse(-)\tHf(m)\t\tHd(m)\t\tGs(kg/m^2 s)');
i=1;
while i<=n
    mprintf('\n\t%f\t%f\t%f\t%f\t%f',uo(i),ephsilonse(i),Hf(i),Hd(i),GsI(i));
    i=i+1;
end
printf('\nMode II');
printf('\n\tuo(m/s)\t\tephsilonse(-)\tHf(m)\t\tHd(m)\t\tLmf(m))');
i=1;
while i<=n
    mprintf('\n\t%f\t%f\t%f\t%f\t%f',uo(i),ephsilonseII(i),HfII(i),HdII(i),LmfII(i));
    i=i+1;
end
printf('\nMode III');
printf('\n\tGs(kg/m^ s)\tephsilonse(-)\tHf(m)\t\tHd(m)\t\tLmf(m)');
i=1;
while i<=m
    mprintf('\n\t%f\t%f\t%f\t%f\t%f',GsIII(i),ephsilonseIII(i),HfIII(i),HdIII(i),LmfIII(i));
    i=i+1;
end
printf('\nMode IV');
printf('\n\tuo(m/s)\t\tGs(kg/m^2 s)\tephsilonse(-)\tHf(m)\t\tLmf(m)');
i=1;
while i<=n
    mprintf('\n\t%f\t%f\t%f\t%f\t%f',uo(i),GsIV(i),ephsilonseIV(i),HfIV(i),LmfIV(i));
    i=i+1;
end

//====================================END OF PROGRAM ======================================================