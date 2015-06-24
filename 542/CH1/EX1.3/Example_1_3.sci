clear all;
clc;
printf("\n Example 1.3");
p=0.20;//components analysed represents 20 percent of the mixture by mass
//for a completely unmixed system
so=p*(1-p);
//for a completely random mixture :
n=100;//Each of the sample removed contains 100 particles
sr=p*(1-p)/n;
s=[0.025 0.006 0.015 0.018 0.019];
time_secs=[30 60 90 120 150];
printf("\n degree of mixing is :\n")
function[b]=degree_of_mixing()
for i=1:5
    b(i)=(so-s(i))/(so-sr);
    disp(b(i));//b is the degree of mixing
end
    return b;
funcprot(0)
endfunction
plot2d(time_secs,degree_of_mixing(),style=3)
xtitle("degree of mixing curve","time_secs","degree_of_mixing")
//plot of sample variance vs time(secs)
xset('window',1)
plot2d(time_secs,s,style=2)
xtitle("sample variance curve","time_secs","sample variance")
//from the graph the maxima is at 60 secs



