clc
disp("Example 6.33")
printf("\n")
disp("Calculate output voltage if input voltage is 1V")
printf("Given")
disp("R1=1K,Rf=100K,V+=15V,V-=-15,Vi=1v")
Rf=10^5
R1=10^3
//supply votage
Vplus=15
Vminus=(-15)
//calculate voltage gain
Af=(-Rf)/R1
Vi=1
// calculate output voltage
Vo=Af*Vi
//condition to check output votage is greater than Vplus
if(Vo>Vplus) then
  printf("The Maximum positive output voltage=%f volt",Vplus)
//condition to check output voltage is less than Vminus
elseif (Vo<Vminus) then
  printf("The maximum negative output voltage=%f volt",Vminus)
//else display Vo
  else
  printf("The output voltage=%f volt",Vo)
end
