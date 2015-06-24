

//example 4.12
//plot IDF curve for return period of 10,2 and 1 years using california formula
clc;funcprot(0);
//given
t=[5 10 20 30 60 90 120];       //duration
//value of P for respective return period is
p10=[10.6 14.7 19.3 20.8 25.5 29 34.7];  //rainfall for T=10 years
p2=[8.2 10.3 13.2 14.2 16.6 19.4 21.4];  //rainfall for T=2 years
p1=[3.5 6.2 8.9 10 13.2 15 16.5];        //rainfall for T=1 year
for i=1:7
    i1(i)=p10(i)*60/t(i);                //intensity of rainfall with return period of 10 years
    i2(i)=p2(i)*60/t(i);                 //intensity of rainfall with return period of 2 years
    i3(i)=p1(i)*60/t(i);                 //intensity of rainfall with return period of 1 year
end
//graph is plotted between
//t and i1
//t and i2
//t and i3
