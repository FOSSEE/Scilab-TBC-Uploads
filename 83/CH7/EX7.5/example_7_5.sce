//Chapter 7
//Example 7.5
//page 264
//To find savings when losses are coordinated
clear;clc;

function [lamdaprev,Pg]=optimum(Pd)    
        n=2; //number of generators
        Alpha=[0.02 0.04];
        Beta=[16 20];
        lamda=20; //initial guess for lambda
        lamdaprev=lamda;
        eps=1; //tolerance
        deltalamda=0.25; //increment in lamda
        Pgmax=[200 200];
        Pgmin=[0 0];
        Pg=100*ones(n,1);
        while abs(sum(Pg)-Pd)>eps
            for i=1:n
                Pg(i)=(lamda-Beta(i))/Alpha(i);
                if Pg(i)>Pgmax(i) then
                    Pg(i)=Pgmax(i);
                end
                if Pg(i)<Pgmin(i) then
                    Pg(i)=Pgmin(i);
                end
           end
           if  (sum(Pg)-Pd)<0 then
               lamdaprev=lamda;
               lamda=lamda+deltalamda;
            else
               lamdaprev=lamda;
               lamda=lamda-deltalamda;   
           end
           end
endfunction

//the above function "optimum" doesn't coordinate losses

//case(i) when the losses are included but not coordinated
[lamda_case1,Pg_case1]=optimum(237.04);
//since Pg2 does not supply transmission losses and the losses are supplied only by Pg1
Pg2_1=Pg_case1(2);
//to get Pg1 we will solve Pg1+Pg2=0.001*Pg1^2+237.04
//the above equation can be wriiten as (0.001*Pg1^2) - Pg1 +(237.04-Pg2) =0
p=poly([0.001 -1 (237.04+Pg2_1)],"Pg1");
Pg1_1=roots(p);
Pg1_1=Pg1_1(1);

printf('\ncase(i) when the losses are included but not coordinated');
printf('\nPg1=%0.2f MW    Pg2=%0.2f MW',Pg1_1,Pg2_1);

//case(ii) when the losses are also coordinated
//we have the solution for case(ii) from example_7_4
Pg1_2=128.57; Pg2_2=125; //case(ii)

printf('\n\ncase(ii) when the losses are coordinated');
printf('\nPg1=%0.2f MW    Pg2=%0.2f MW',Pg1_2,Pg2_2);

//saving at plant 1 is
saving1=integrate('0.02*Pg1+16','Pg1',Pg1_2,Pg1_1);
printf('\n\nSaving at plant 1 due to loss coordination is = Rs %0.2f/hr',saving1);

//saving at plant 2 is
saving2=integrate('0.04*Pg2+20','Pg2',Pg2_2,Pg2_1);
printf('\n\nSaving at plant 2 due to loss coordination is = Rs %0.2f/hr',saving2);

//net savings achieved
printf('\n\nThe net saving achieved by coordinating losses while scheduling the recieved load of 237.04MW is Rs %0.2f/hr',saving1+saving2);