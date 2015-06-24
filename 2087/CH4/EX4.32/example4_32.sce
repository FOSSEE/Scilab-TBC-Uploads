

//example 4.32
//calculate recurrence interval of flood using
//california method
//Hazens method
//gumbels method
clc;funcprot(0);
//given
q=[9200 7800 6600 5800 5260 4980 4525 3810 3630 3250 3110 3090 2380 2390 1723]; //Discharge arranged in decreasing order
N=15;
C=0.3;
m=[1:1:15];
C=[0.3 0.44 0.52 0.57 0.61 0.66 0.7 0.74 0.78 0.82 0.86 0.88 0.94 0.96 1];   //from table 4.25
mprintf("California          Hazen          Gumbel");
for i=1:15
    Ca(i)=N/m(i);
    H(i)=2*N/(2*m(i)-1);
    G(i)=N/(m(i)+C(i)-1);
    Ca(i)=round(Ca(i)*100)/100;
    G(i)=round(G(i)*100)/100;
    H(i)=round(H(i)*100)/100;
    mprintf("\n%f          %f          %f",Ca(i),H(i),G(i));
end


