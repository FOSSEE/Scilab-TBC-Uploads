//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-9, Example 2, Page 222
//Title: Horizontal Drift Of Solids
//==========================================================================================================

clear
clc

//INPUT
Lmf=0.83;//Length of bed at minimum fluidization condition in m
dp=450;//Average particle size in micrometer
ephsilonmf=0.42;//Void fraction at minimum fluidization condition
umf=0.17;//Velocity at minimum fluidization condition in m/s
uo=[0.37;0.47;0.57;0.67];//Superficial gas velocity in m/s
Dsh=[0.0012;0.0018;0.0021;0.0025];//Horizontal Drift Coefficient from Experiment in m^2/s
db=[0.10;0.14];//Equilibrium bubble size in m
g=9.81;//Acceleration due to gravity in m/s^2


//CALCULATION
n=length(uo);
m=length(db);
j=1;
i=1;
k=1;
alpha=0.77;//Since we are not dealing with Geldart A or AB solids
uf=umf/ephsilonmf;
for j = 1:m
        for i = 1:n
            ubr(k)=0.711*(db(j)*g)^0.5;//Rise velocity of a single bubble in m/s
            ub(k)=uo(i)-umf+ubr(k);//Rise velocity of bubbles in a bubbling bed
            delta(k)=(uo(i)-umf)/(ub(k)+umf);//Bed fraction in bubbles
            if ubr(i)>uf then Dshc(k)=(3/16)*(delta(k)/(1-delta(k)))*((alpha^2*db(j)*ubr(k)*[(((ubr(k)+2*uf)/(ubr(k)-uf))^(1/3))-1]));//Horizontal Distribution coeff. from Eqn.(14)
            else Dsh(k)=(3/16)*(delta/(1-delta))*(alpha^2*umf*db/ephsilonmf);//Horizontal Distribution coeff. from Eqn.(15)
            end
            Dshc(k)=(3/16)*(delta(k)/(1-delta(k)))*((alpha^2*db(j)*ubr(k)*[(((ubr(k)+2*uf)/(ubr(k)-uf))^(1/3))-1]));//Horizontal Distribution coeff. from Eqn.(14)
            i=i+1;
            k=k+1;
        end
    i=1;
    j=j+1;
end

//OUTPUT
i=1;
j=1;
k=1;
while k<=m*n
    mprintf('\nSnce we do not have ub=%fm/s>>uf=%fm/s we use Eqn.(14).',ub(k),uf)
    printf('\nGas Velocity(m/s)');
    printf('\tHorizontal Drift Coefficient Calculated(m^2/s)');
    printf('\tHorizontal Drift Coefficient from Experiment(m^2/s)');
    while j<=m
        mprintf('\ndb=%fm',db(j));
        while i<=n
            mprintf('\n%f',uo(i));
            mprintf('\t\t%f',Dshc(k));
            mprintf('\t\t\t\t\t%f',Dsh(i));
            i=i+1;   
            k=k+1;
        end
    i=1;
    j=j+1;
    end
end    

//====================================END OF PROGRAM ======================================================