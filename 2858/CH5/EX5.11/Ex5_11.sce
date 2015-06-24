//example 5.11
clc; funcprot(0);
N60=(3+7+12+12+16)/5;
B=[2, 2.25, 2.3];
Fd=[1.248, 1.22, 1.215];
Qoac=102000*9.81/1000;//actual Qo
Se=25;
printf("B(m)\t Fd\t qnet(kN/m^2)\t Qo \n");
for i=1:3
    qnet(i)=10/0.08*(B(i)+0.3)^2/(B(i))^2*Fd(i)*Se/25;
    Qo(i)=qnet(i)*B(i)^2;
    printf("%.2f\t %.2f\t %.2f\t\t %.2f\n",B(i), Fd(i),qnet(i),Qo(i))
end
disp(Qoac,"value of Qo in kN");
printf("since Qo is 1000 kN thus B is equal to 2.3m from the table");

