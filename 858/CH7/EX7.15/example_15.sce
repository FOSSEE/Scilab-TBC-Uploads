clc
//example 7.15
//to find the rate equation
t = [0;5;10;15;20;25]
C_A = [25;18.2;13.2;9.6;7;5.1]

//integral method of rate determination
s = 0;
for i = 2:6
    k(i) = (1/t(i))*log(25/C_A(i))
    //disp (k(i),"k values for various conc.")
    s = s+k(i)
end

printf("average value of k = %f",s/5)
disp ("ra =- 0.06367*CA","since its a first order reaction,")

subplot(221) 
plot(t,C_A)
xlabel("time")
ylabel("concentration")
title("integral method")

//differential method of rate determination
ra = [-1.16;-0.83;-0.60;-0.43];
C_A = [18.2;13.2;9.6;7];

subplot(222) 
plot(ra,C_A)
xlabel("Concentration")
ylabel("-ra")
title("differential method")

printf("\n\nrate from differential method = -0.064*CA")
