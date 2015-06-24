//Example 12.1

clear;

clc;

k=["000" "001" "010" "011" "100" "101" "110" "111"];

vo=[0 1/8 2/8 3/8 4/8 5/8 6/8 7/8];

voact=[0 1/8 3/16 7/16 3/8 11/16 11/16 7/8];

INL=(voact-vo)*8;

for i=2:8
    DNL(1,i)=INL(1,i)-INL(1,i-1);
end

DNL(1,1)=INL(1,1)

printf("INL=");

disp(INL);

printf("\nDNL=");

disp(DNL);

printf("\nThe maxima of INL and DNL are, respectively, INL=1 LSB and DNL=(3/2) LSB.We observe");

printf("\na nonmonotonicity as the code changes from 011 and 100, where the step size is");

printf("\n(-1/2) LSB instead of (+1 LSB); hence, DNL(100)=-(1/2)-(+1)=(-3/2) LSB<-1 LSB.");

printf("\nThe fact that DNL(101)=(3/2) LSB>1 LSB, though undesirable, does not cause nonmonotocity.");