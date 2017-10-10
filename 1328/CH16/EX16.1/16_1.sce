printf("\t example 16.1 \n");
printf("\t approximate values are mentioned in the book \n");
Af=(20*0.75*12*2)/(144);
Ao=((3.14*1.25)-(20*0.035))*(12/144);
printf("\t fin surface is : %.1f ft^2/lin ft \n",Af);
printf("\t bare tube surface is : %.3f ft^2/lin ft \n",Ao);
A=(Af+Ao);
printf("\t total outside surface : %.2f ft^2/lin ft \n",A);
Ai=(3.14*1.06*12)/(144);
printf("\t total inside surface : %.3f ft^2/lin ft \n",Ai);
printf("\t fin efficiencies \n");
b=0.0625; // ft
hf=4; // from table in solution
m=(5.24*(hf^(1/2))); // m=((hf*P)/(Kax))^(1/2), eq 16.8
n=(tanh(m*b))/(m*b); // efficiency , eq 16.26
printf("\n hf      m      n \n "+string(hf)+"      "+string(m)+"      "+string(n)+" \n");
// similarly efficiencies values are calculated at different hf values
printf("\t weighted efficiency curve \n");
hfi=((n*Af)+(Ao))*(hf/Ai); // eq 16.34
printf("\n hf      hfi \n "+string(hf)+"      "+string(hfi)+" \n");
// similarly efficiencies values are calculated at different hf values
hf=[4 16 36 100 400 625 900]; // from 2nd table in the solution
hfi=[35.4 110.8 193.5 370 935 1295 1700]; // from 2nd table in the solution
plot2d("oll",hf,hfi);
xtitle("weighted fin efficiency curve","heat transfer coefficient to fin,Btu/(ft^2)*(hr)","coefficient hf referred to the tube ID");
//end
