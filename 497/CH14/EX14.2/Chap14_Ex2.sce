//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-14, Example 2, Page 344
//Title: Flow with Elutriation and Change in Density of Solids
//==========================================================================================================

clear
clc

//INPUT
dt=4;//Diameter of reactor in m
ephsilonm=0.4;//Void fraction of static bed
rhos=2500;//Density of solid in the bed in kg/m^3
Lm=1.2;//Height of static bed in m
Fo=3000;//Feed rate in kg/hr
beta1=1.2;//Increase in density of solids
dp=[3;4;5;6;7;8;9;10;11;12;3;14;16;18;20;22;24;26;28;30]*10^-2;//Size of particles in mm
po=[0;0.3;0.8;1.3;1.9;2.6;3.5;4.4;5.7;6.7;7.5;7.8;7.5;6.3;5.0;3.6;2.4;1.3;0.5;0];//Size distribution of solids in mm^-1
k=[0;10;9.75;9.5;8.75;7.5;6.0;4.38;2.62;1.20;0.325;0;0;0;0;0;0;0;0;0]*10^-4;//Elutriation constant in s^-1
pi=3.14;

//CALCULATION
W=(pi/4*dt^2)*Lm*(1-ephsilonm)*rhos;//Weight of solids in bed
n=length(dp);
i=1;
F1guess=1000;//Guess value for F1
F1c=2510:10:2700;
while i<=n
    function[fn]=solver_func(F1)//Function defined for solving the system
        if k(i)==0  then    x(i)=0; break 
                    else    x(i)=(po(i)/(W*k(i)/F1))*log(1+(W*k(i)/F1));         
        end
    fn=F1/(Lm*Fo)-x(i);
    endfunction
    [F1(i)]=fsolve(F1guess,solver_func,1E-6);//Using inbuilt function fsolve for solving Eqn.(20) for F1
    c(i)=F1c(i)/(Lm*Fo);
    if F1(i)==0 then a(i)=0;
    else     a(i)=(po(i)/(W*k(i)/F1(i)))*log(1+(W*k(i)/F1(i)));
    end    
    i=i+1;
end
plot(F1,a,F1,c);
xtitle('F1 vs a,c','F1','a,c');
F1n=2500;//The point were both the curves meet
F2=beta1*Fo-F1n;//Flow rate of the second leaving stream
j=1;
m=length(dp);
while j<=m
    p1(j)=(1/F1n)*((Fo*po(j))/(1+(W/F1n)*k(j)));//Size distribution of stream 1 in mm^-1 from Eqn.(16)
    p2(j)=k(j)*W*p1(j)/F2;//Size distribution of stream 2 in mm^-1 from Eqn.(7)
    if p1(j)==0 & p2(j)==0 then tbar(j)=0;
    else  if  p1(j)==0 then tbar(j)=(W*p1(j))/(F2*p2(j));
        else if  p2(j)==0 then tbar(j)=(W*p1(j))/(F1n*p1(j));
            else tbar(j)=(W*p1(j))/(F1n*p1(j)+F2*p2(j));//Average time in hr from Eqn.(11)
            end
        end
    end
    j=j+1;
end

//OUTPUT
printf('\nFlow rate of stream 1:%fkg/hr',F1n);
printf('\nFlow rate of stream 2:%fkg/hr',F2);
j=1;
mprintf('\ntbar(hr)');
while j<=m
    mprintf('\n%f',tbar(j));
    j=j+1;
end

//====================================END OF PROGRAM ======================================================
//DISCLAIMER: The value obtained for tbar is deviating highly form the one given in textbook. However, the value obtained by manual calculation is close to the   ones obtained from the program.